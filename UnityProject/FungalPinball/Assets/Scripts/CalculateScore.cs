using UnityEngine;

public class CalculateScore : MonoBehaviour
{

    public FloatData score;
    [SerializeField] private FloatData highScore;
    [SerializeField] private IntData tempOutput;
    public IntData output;
    
    public void AddHalfScoreOutput()
    {
        float temp = output.Value;
        temp += score.Value / 2;
        output.Value = (int) temp;
    }

    public void AddDividedScoreOutput(int divisor)
    {
        float temp = output.Value;
        temp += score.Value / divisor;
        output.Value = (int) temp;
    }

    public void CalculateScoreMoney()
    {
        if(tempOutput != null)
        {
            tempOutput.Value = (int) score.Value / 10;
            output.Value += tempOutput.Value;
        }  
        else
        {
            output.Value += (int) score.Value / 10;
        }
       
    }

    public void CheckHighScore()
    {
        if (score.Value > highScore.Value)
        {
            highScore.Value = score.Value;
        }
    }
}
