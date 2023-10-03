using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GoForward : MonoBehaviour
{
    private float speed = 20.0f;
    private float bound = -20.0f;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        // Move the vehicle forward
        transform.Translate(Vector3.forward * Time.deltaTime * speed);


        // Destroy Out of bounds
        if (transform.position.z < bound)
        {
            Destroy(gameObject);
        }
    }
}
