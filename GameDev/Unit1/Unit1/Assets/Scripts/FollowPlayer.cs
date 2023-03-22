using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FollowPlayer : MonoBehaviour
{
    public GameObject player;
    private Vector3 offset = new Vector3(0, 5, -7); //new because it creates a new object, a vector, which is an arrow

    // Start is called before the first frame update
     void Start()
    {
        
    }

    // LateUpdate is called once per frame after every Update is called
    void LateUpdate()
    {
        transform.position = player.transform.position + offset; 
        
    }
}
