using System;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;
using System.Globalization;
using System.Collections;

[RequireComponent(typeof(Slider))]
public class SliderBehaviour : MonoBehaviour
{
    [SerializeField] private GameAction gameActionObj;
    [SerializeField] private UnityEvent awakeEvent, raiseEvent;

    private Slider sliderObj;
    private WaitForSeconds waitForFixedUpdate;

    private int currentNum;

    private void Start()
    {
        waitForFixedUpdate = new WaitForSeconds(0.1f); // Set delay time for UpdateNumberCount
        Awake();
        awakeEvent.Invoke();
    }

   private void OnDestroy()
    {
        if (gameActionObj != null) gameActionObj.RaiseNoArgs -= Raise;
    }

    protected void Awake()
    {
        sliderObj = GetComponent<Slider>();
        if (gameActionObj != null) gameActionObj.RaiseNoArgs += Raise;
    }

    private void Raise() => raiseEvent.Invoke();
    public void UpdateValue(FloatData floatDataObj) => sliderObj.value = floatDataObj.Value;

    public void UpdateValue(IntData obj) => sliderObj.value = obj.Value;

    public void SetValue(float obj) => sliderObj.value = obj;
    public void SetValue(FloatData obj) => sliderObj.value = obj.Value;
    public void SetValue(IntData obj) => sliderObj.value = obj.Value;

    // public void UpdateTextWithTime(FloatData obj)
    // {
    //     TimeSpan timeSpanObj = TimeSpan.FromSeconds(obj.Value);
    //     textObj.text = $"{timeSpanObj.Minutes}:{timeSpanObj.Seconds:d2}";
    // }

    // public void UpdateTextAsMoney(IntData obj)
    // {
    //     textObj.text = obj.Value.ToString("C0");
    // }

    public void StoreIntDataValue(IntData obj)
    {
        currentNum = obj.Value;
    }

    // public void StoreFloatDataValue(FloatData obj)
    // {
    //     currentNum = obj.Value;
    // }

    public void StartUpdateNumberCount(IntData obj)
    {
        StartCoroutine(UpdateNumberCount(obj));
    }

    private IEnumerator UpdateNumberCount(IntData intData)
    {
        while (intData.Value != currentNum)
        {
            currentNum -= 5; // You may want to adjust the decrement value here
            sliderObj.value = currentNum;
            yield return waitForFixedUpdate;
        }
    }
}

