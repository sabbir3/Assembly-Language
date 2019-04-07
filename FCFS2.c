
#include<stdio.h>

main()

{

int n;

printf("Enter the no. of processes: ");

scanf("%d",&n);

int bt[n],id[n],wt[n],tat[n],i;

for(i=0;i<n;i++)

{

printf("Enter the process id %d: ",i+1);

scanf("%d",&id[i]);

printf("Enter the process burst time %d: ",i+1);

scanf("%d",&bt[i]);

wt[i]=0;

}

int j;

for(i=0;i<n;i++)

{

for(j=0;j<i;j++)

{

wt[i]=wt[i]+bt[j];

}

tat[i]=wt[i]+bt[i];

}

int avwt=0,avtat=0;

for(i=0;i<n;i++)

{

avwt=avwt+wt[i];

avtat=avtat+tat[i];

}

avwt=avwt/n;

avtat=avtat/n;

printf("Process\tBurst Time\tWaiting Time\tTurnaround Time1");

for(i=0;i<n;i++)

{

printf("\n%d\t\t%d\t\t%d\t\t%d",id[i],bt[i],wt[i],tat[i]);

}

printf("\nAverage Waiting Time: %d\nAverage Turnaround Time: %d\n",avwt,avtat);

int st[n];

for(i=0;i<n;i++)

{

printf("%d\t",id[i]);

}

printf("\n");

for(i=0;i<n;i++)

{

printf("%d\t",wt[i]);

}

}
