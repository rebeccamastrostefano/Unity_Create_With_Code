using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DestroyOutOfBounds : MonoBehaviour
{
    private float topBound= 30;
    private float lowerBound= -10;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        //Destroy bullets outside topBound
        if (transform.position.z > topBound)
        {
            Destroy(gameObject);
        }

        //Destroy bullets outside lowerBound
        else if (transform.position.z < lowerBound)
        {
            Destroy(gameObject);
        }

        else
        {
            //Nothing happens
        }
    }
}
