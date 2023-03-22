using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerControl : MonoBehaviour
{
    //Max forward/backward spees in m/s
    private float speed= 20.0f;

    //Max rotate speed in degrees
    private float turnSpeed= 45.0f;

    //Input to turn vehicle
    private float horizontalInput;

    //Input to make vehicle move forward/backward
    private float forwardInput;

    //Start is called before the first frame update 
    void Start()
    {
        
    }

    //Update is called once per frame
    void Update()
    {   // horizontal and Vertical Input are in the [1, -1] range
        horizontalInput = Input.GetAxis("Horizontal");

        forwardInput = Input.GetAxis("Vertical");

        // Move the vehicle forward
        transform.Translate(Vector3.forward * Time.deltaTime * speed * forwardInput);

        // Turn vehicle
        transform.Rotate(Vector3.up, Time.deltaTime * turnSpeed * horizontalInput);

        // Move vehicle sideways
        // transform.Translate(Vector3.right * Time.deltaTime * turnSpeed * horizontalInput);

        
    }
}
