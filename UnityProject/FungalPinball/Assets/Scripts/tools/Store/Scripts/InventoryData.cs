using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu (fileName = "InventoryData", menuName = "Store/InventoryData")]
public class InventoryData : ScriptableObject
{
    public IntData cash;
    [SerializeField] private List<ScriptableObject> inventory;
    // [SerializeField] private GameActionAdvanced invFullExit;
    public readonly List<IInventoryItem> inventoryDataObjList = new List<IInventoryItem>();
    public readonly List<IStoreItem> storeDataObjList = new List<IStoreItem>();
    [SerializeField] private int itemMax;

    private void OnEnable()
    {
        SynchronizeInventory();
    }

    public void AddToInventory(ScriptableObject obj)
    {
        if (!inventory.Contains(obj))
        {
            if (inventory.Count < itemMax)
            {
                inventory.Add(obj);
                SynchronizeInventory();
            }
            else Debug.Log("Delete something idiot");
        }
    }
    public void AddToInventoryRepeatable(ScriptableObject obj)
    {
        if (inventory.Count < itemMax)
        {
            inventory.Add(obj);
            SynchronizeInventory();
        }
        else Debug.Log("Delete something idiot");
    }

    public void ClearInventory()
    {
        inventory.Clear();
        SynchronizeInventory();
    }

    public void SynchronizeInventory()
    {
        inventoryDataObjList.Clear();
        storeDataObjList.Clear();

        foreach (var item in inventory)
        {
            if (item is IInventoryItem inventoryItem)
                inventoryDataObjList.Add(inventoryItem);
            if (item is IStoreItem storeItem)
                storeDataObjList.Add(storeItem);
        }
    }

    private void ConstrainItemAmount(int newAmt)
    {
        itemMax = newAmt;
    }

    private int FindIndexOf(string obj)
    {
        Debug.Log("FINDIN INDEX");
        int i = 0;
        foreach (var item in inventoryDataObjList)
        {
            i++;
            string match = item.ThisName;
            if (match == obj)
            {
                return i;
            }            
        }
        Debug.Log("does not exist");
        return -1;
        
        // int index = inventory.FindIndex(obj.GetInstanceID());
        // Debug.Log("indexes:" + index);
        // return index;
    }

    public void RemoveFromInventoryAtPoint(int index)
    {
        if (index == -1) Debug.Log("does not exist");
        else
        {
            inventory.RemoveAt(index);
            SynchronizeInventory();
        }
    }

    public void RemoveFromInventory(ScriptableObject item)
    {
        Debug.Log(item);
        inventory.Remove(item);
        SynchronizeInventory();
    }

    public int GetItemMax()
    {
        return itemMax;
    }

    public int GetInventoryCount()
    {
        return inventory.Count;
    }

    // public void RemoveFromInventory(InventoryItem obj)
    // {
    //     Debug.Log("MadeItToRemove " + obj.name);
    //     int index = FindIndexOf(obj.name);
    //     if (obj != null && index != -1)
    //     {
    //         Debug.Log("ITS TRYING TO REMOVE " + index);
    //         inventory.RemoveAt(index);
    //         SynchronizeInventory();
    //     }
    //     else Debug.Log("mother fucker failed");
    // }

    // private IEnumerable ReplaceObj(ScriptableObject obj)
    // {
    //     while(true)
    //     {
    //         yield return player.WaitForAction();
    //         Debug.Log(player.action); // do something with player action

    //     }
    // }
}