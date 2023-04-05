using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FollowPlayer : MonoBehaviour
{
    public GameObject player;
    private Vector3 offset1 = new Vector3(0, 5, -7); //new because it creates a new object, a vector, which is an arrow
    private Vector3 offset2 = new Vector3(0, 2, 1);
    // Start is called before the first frame update

    private SwitchCamera switchCamera;
     void Start()
    {
        switchCamera = GetComponent<SwitchCamera>();
    }

    // LateUpdate is called once per frame after every Update is called
    void LateUpdate()
    {
        if (switchCamera.cameraInside)
        {
            transform.position = player.transform.position + offset2;    
        }

        else
        {
            transform.position = player.transform.position + offset1; 
        }
       
    }
}
