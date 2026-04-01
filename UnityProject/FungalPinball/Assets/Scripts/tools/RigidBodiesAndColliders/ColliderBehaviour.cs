using System.Collections;
using UnityEngine;
using UnityEngine.Events;

public class ColliderBehaviour : MonoBehaviour
{
    private Collider colliderObj;
    public UnityEvent startEvent, triggerEnterEvent, respondLateEvent;
    public float holdTime = 0.1f;
    private WaitForSeconds waitObj;

    private void Awake()
    {
        waitObj = new WaitForSeconds(holdTime);
    }
    protected virtual void Start()
    {
        colliderObj = GetComponent<Collider>();
        colliderObj.isTrigger = true;
        startEvent.Invoke();
    }
    
    protected virtual void OnTriggerEnter(Collider other)
    {
        triggerEnterEvent.Invoke();

        if (!gameObject.activeInHierarchy) return;
        StartCoroutine(RespondLate());
    }

    private IEnumerator RespondLate()
    {
        yield return waitObj;
        respondLateEvent.Invoke();
    }
}
