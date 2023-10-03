using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spin : MonoBehaviour
{
    //define rotation speed
    public float rotationSpeed;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        //rotate powerup
        transform.Rotate(Vector3.up, rotationSpeed * Time.deltaTime);
    }
}
