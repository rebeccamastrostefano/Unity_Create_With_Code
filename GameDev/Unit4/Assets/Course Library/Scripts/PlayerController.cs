using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    //Rigidbody of the player
    private Rigidbody playerRb;

    //Speed of the player
    public float speed;

    //focal point game object
    private GameObject focalPoint;

    //powerup bool
    public bool hasPowerup = false;

    //powerup strenght
    private float powerupStrenght = 15.0f;

    //powerup indicator
    public GameObject powerupIndicator;

    // Start is called before the first frame update
    void Start()
    {
        //Get the rigidbody and the focal point object
        playerRb = GetComponent<Rigidbody>();
        focalPoint = GameObject.Find("Focal Point");
    }

    // Update is called once per frame
    void Update()
    {
        //get the forward input (up down arrow keys)
        float forwardInput = Input.GetAxis("Vertical");
        //move player forward
        playerRb.AddForce(focalPoint.transform.forward * speed * forwardInput);
        //set powerup indicator on top of player
        powerupIndicator.transform.position = transform.position + new Vector3(0, 2, 0);
    }
    private void OnTriggerEnter(Collider other) 
    {
        //check if powerup has collided with player
        if (other.CompareTag("Powerup"))
        {
            //set powerup to true
            hasPowerup = true;
            //destroy the powerup
            Destroy(other.gameObject);
            //start countdown of powerup in a coroutine (executes asynchronously)
            StartCoroutine(PowerupCountwdownRoutine());
            //show powerup indicator
            powerupIndicator.gameObject.SetActive(true);
        }
    }
    private void OnCollisionEnter(Collision collision) 
    {
        //check if player collides with enemy with powerup
        if (hasPowerup && collision.gameObject.CompareTag("Enemy"))
        {
            //get enemy rigidbody
            Rigidbody enemyRigidbody = collision.gameObject.GetComponent<Rigidbody>();
            //get direction of collision
            Vector3 awayFromPlayer = (collision.gameObject.transform.position - transform.position);
            //show in debug
            Debug.Log("Collided with " + collision.gameObject.name + "with Powerup set to " + hasPowerup);
            //push with force in the collision direction
            enemyRigidbody.AddForce(awayFromPlayer * powerupStrenght, ForceMode.Impulse);
        }
    }

    IEnumerator PowerupCountwdownRoutine()
    {
        //countdown for powerup
        yield return new WaitForSeconds(7);
        //set powerup to false whne time is up
        hasPowerup = false;
        //hide powerup indicator when time is up
        powerupIndicator.gameObject.SetActive(false);
    }
}
