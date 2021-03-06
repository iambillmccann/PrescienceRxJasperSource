SELECT  MAX(pd.[BeneficiaryNumber]) BeneficiaryNumber
      ,MAX(MonthYear_Description) MonthYear_Description
      ,MAX(pd.[ReportedDate]) ReportedDate
      ,MAX(pd.[FirstName]) FirstName
      ,MAX(pd.[LastName]) LastName
	  ,MAX(pd.[DOB]) DOB
	  ,MAX(pd.MERLevel) MERLevel
	  ,MAX(MERLevel_Description)  MERLevel_Description
	  ,MAX(Polypharm) Polypharm
	  ,MAX(Polypharm_Description)  Polypharm_Description
	  ,MAX(Polyprescriber) Polyprescriber
	  ,MAX(Polyprescriber_Description)  Polyprescriber_Description
	  ,MAX(TheraputicComplexity) TheraputicComplexity
	  ,MAX(TheraputicComplexity_Description)  TheraputicComplexity_Description
	  ,MAX(CoordinationRisk) CoordinationRisk
	  ,MAX(CoordinationRisk_Description)  CoordinationRisk_Description
      ,pd.[Id]
      ,MAX(pd.[PredominentProviderNPI]) PredominentProviderNPI
      ,MAX(pd.[PredominentProviderSpecialtyName]) PredominentProviderSpecialtyName
      ,MAX(pd.[PredominentProviderName]) PredominentProviderName
      ,MAX(pd.[ControlledSubstanceDrugs]) ControlledSubstanceDrugs
      ,MAX(pd.[PotentialCSA_Level]) PotentialCSA_Level
	  ,MAX(InNetworkCount) InNetworkCount
	  ,MAX(OutOfNetworkCount) OutOfNetworkCount
	  ,MAX(BrandCount) BrandCount
	  ,MAX(GenericCount) GenericCount	
	  ,MAX(ConcurrentDrugsAllDrugsCount) ConcurrentDrugsAllDrugsCount
	  ,MAX(ConcurrentDrugsDrugLast90DaysCount) ConcurrentDrugsDrugLast90DaysCount
	  ,MAX(AbusePotentialDrugsControlledSubstanceHighCount) AbusePotentialDrugsControlledSubstanceHighCount
	  ,MAX(AbusePotentialDrugsControlledSubstanceMedCount) AbusePotentialDrugsControlledSubstanceMedCount
	  ,MAX(AbusePotentialDrugsControlledSubstanceLowCount) AbusePotentialDrugsControlledSubstanceLowCount
	  ,MAX([ActionAlerts]) ActionAlerts
      ,MAX([Gender]) Gender  
	  ,MAX(Convert(varchar(10),[DOB],102)) DOB  	   	        
      ,pd.[ConditionName] ConditionName
      ,pd.[ConditionImpact] ConditionImpact
      ,pd.[EmergentType] EmergentType
  FROM [dbo].[r889909e7fa464ac783ae508a02ab5dfa] pd
  WHERE  LEN(LTRIM(RTRIM(pd.[EmergentType]))) > 1
  GROUP BY pd.[Id] , pd.ConditionName, pd.ConditionImpact, pd.EmergentType
  order by pd.Id;

