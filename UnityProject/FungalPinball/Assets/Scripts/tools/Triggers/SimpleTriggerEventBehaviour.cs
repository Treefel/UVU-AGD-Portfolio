using System.Collections;
using UnityEngine;
using UnityEngine.Events;

[RequireComponent(typeof(Collider))]
public class SimpleTriggerEventBehaviour : MonoBehaviour
{
    public UnityEvent awakeEvent, triggerEvent, respondLateTrigger;
    public float holdTime = 0.1f;
    private WaitForSeconds waitObj;
    
    private void Awake()
    {
        awakeEvent.Invoke();
        GetComponent<Collider>().isTrigger = true;
        waitObj = new WaitForSeconds(holdTime);
    }
    
    private void OnTriggerEnter(Collider other)
    {
        triggerEvent.Invoke();
        StartCoroutine(RespondLate(other));
    }

    private IEnumerator RespondLate(Collider other)
    {
        yield return waitObj;
        respondLateTrigger.Invoke();
    }
}