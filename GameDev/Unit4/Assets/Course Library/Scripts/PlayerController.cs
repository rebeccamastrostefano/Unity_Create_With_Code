using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    private Rigidbody playerRb;
    public float speed = 2.0f;
    private GameObject focalPoint;
    public bool hasPowerup = false;
    private float powerupStrenght = 15.0f;
    public GameObject powerupIndicator;
    // Start is called before the first frame update
    void Start()
    {
        playerRb = GetComponent<Rigidbody>();
        focalPoint = GameObject.Find("Focal Point");
    }

    // Update is called once per frame
    void Update()
    {
        float forwardInput = Input.GetAxis("Vertical");
        playerRb.AddForce(focalPoint.transform.forward * speed * forwardInput);
    }
    private void OnTriggerEnter(Collider other) 
    {
        if (other.CompareTag("Powerup"))
        {
            hasPowerup = true;
            Destroy(other.gameObject);
            StartCoroutine(PowerupCountwdownRoutine());
        }
    }
    private void OnCollisionEnter(Collision collision) 
    {
        if (collision.gameObject.CompareTag("Enemy") && hasPowerup)
        {
            Rigidbody enemyRigidbody = collision.gameObject.GetComponent<Rigidbody>();
            Vector3 awayFromPlayer = (collision.gameObject.transform.position - transform.position);
            Debug.Log("Collided with" + collision.gameObject.name + "with Powerup set to" + hasPowerup);
            enemyRigidbody.AddForce(awayFromPlayer * powerupStrenght, ForceMode.Impulse);
        }
    }

    IEnumerator PowerupCountwdownRoutine()
    {
        yield return new WaitForSeconds(7);
        hasPowerup = false;
    }
}
