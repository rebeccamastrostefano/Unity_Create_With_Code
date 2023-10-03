using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Target : MonoBehaviour
{
    private Rigidbody targetRb;
    private float minSpeed = 14;
    private float maxSpeed = 17; 
    private float maxTorque = 10;
    private float xRange = 4;
    private float ySpawnPos = -6;
    private GameManager gameManager;
    public int pointValue;
    public ParticleSystem explosionParticles;
    

    // Start is called before the first frame update
    void Start()
    {
        gameManager = GameObject.Find("Game Manager").GetComponent<GameManager>();
        targetRb = GetComponent<Rigidbody>();
        transform.position = RandomSpawnPos();
        targetRb.AddForce(RandomForce(), ForceMode.Impulse);
        targetRb.AddTorque(RandomTorque(), RandomTorque(), RandomTorque(), ForceMode.Impulse);
    }

    Vector3 RandomForce()
    {
        return Vector3.up * Random.Range(minSpeed, maxSpeed);
    }

    float RandomTorque()
    {
        return Random.Range(-maxTorque, maxTorque);
    }

    Vector3 RandomSpawnPos()
    {
        return new Vector3(Random.Range(-xRange, xRange), ySpawnPos);
    }

    private void OnMouseDown() 
    {
        if(!gameManager.isGameOver)
        {
          Destroy(gameObject);
          gameManager.UpdateScore(pointValue);
          Instantiate(explosionParticles, transform.position, explosionParticles.transform.rotation);  
        }
        
    }

    private void OnTriggerEnter(Collider other) 
    {
        Destroy(gameObject);
        if(!gameObject.CompareTag("Bad"))
        {
            gameManager.GameOver();
        }
    }
    // Update is called once per frame
    void Update()
    {
        
    }
}
