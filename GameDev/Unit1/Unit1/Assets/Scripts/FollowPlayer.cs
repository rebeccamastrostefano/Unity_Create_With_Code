using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FollowPlayer : MonoBehaviour
{
    public GameObject player;
    private Vector3 offset1 = new Vector3(0, 5, -7); //new because it creates a new object, a vector, which is an arrow
    private Vector3 offset2 = new Vector3(0, 2, 1);
    // Start is called before the first frame update
     void Start()
    {
        
    }

    // LateUpdate is called once per frame after every Update is called
    void LateUpdate()
    {
        if (GameObject.Find("Main Camera").GetComponent<SwitchCamera>().cameraInside == false)
        {
            transform.position = player.transform.position + offset1;    
        }

        else
        {
            transform.position = player.transform.position + offset2; 
        }
       
    }
}
