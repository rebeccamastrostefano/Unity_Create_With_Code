using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwitchCamera : MonoBehaviour
{
    public bool cameraInside = false;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (cameraInside == false
        && Input.GetKeyDown(KeyCode.Space))
        {
            cameraInside = true;
        }

        else if (cameraInside == true
        && Input.GetKeyDown(KeyCode.Space))
        {
            cameraInside = false;
        }
    }
}
