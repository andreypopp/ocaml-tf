(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** PROVIDER SERIALIZATION *)

type assume_role

val assume_role :
  ?duration:string prop ->
  ?external_id:string prop ->
  ?policy:string prop ->
  ?policy_arns:string prop list ->
  ?role_arn:string prop ->
  ?session_name:string prop ->
  ?source_identity:string prop ->
  ?tags:(string * string prop) list ->
  ?transitive_tag_keys:string prop list ->
  unit ->
  assume_role

type assume_role_with_web_identity

val assume_role_with_web_identity :
  ?duration:string prop ->
  ?policy:string prop ->
  ?policy_arns:string prop list ->
  ?role_arn:string prop ->
  ?session_name:string prop ->
  ?web_identity_token:string prop ->
  ?web_identity_token_file:string prop ->
  unit ->
  assume_role_with_web_identity

type default_tags

val default_tags :
  ?tags:(string * string prop) list -> unit -> default_tags

type endpoints

val endpoints :
  ?accessanalyzer:string prop ->
  ?account:string prop ->
  ?acm:string prop ->
  ?acmpca:string prop ->
  ?amg:string prop ->
  ?amp:string prop ->
  ?amplify:string prop ->
  ?apigateway:string prop ->
  ?apigatewayv2:string prop ->
  ?appautoscaling:string prop ->
  ?appconfig:string prop ->
  ?appfabric:string prop ->
  ?appflow:string prop ->
  ?appintegrations:string prop ->
  ?appintegrationsservice:string prop ->
  ?applicationautoscaling:string prop ->
  ?applicationinsights:string prop ->
  ?appmesh:string prop ->
  ?appregistry:string prop ->
  ?apprunner:string prop ->
  ?appstream:string prop ->
  ?appsync:string prop ->
  ?athena:string prop ->
  ?auditmanager:string prop ->
  ?autoscaling:string prop ->
  ?autoscalingplans:string prop ->
  ?backup:string prop ->
  ?batch:string prop ->
  ?beanstalk:string prop ->
  ?bedrock:string prop ->
  ?bedrockagent:string prop ->
  ?budgets:string prop ->
  ?ce:string prop ->
  ?chime:string prop ->
  ?chimesdkmediapipelines:string prop ->
  ?chimesdkvoice:string prop ->
  ?cleanrooms:string prop ->
  ?cloud9:string prop ->
  ?cloudcontrol:string prop ->
  ?cloudcontrolapi:string prop ->
  ?cloudformation:string prop ->
  ?cloudfront:string prop ->
  ?cloudfrontkeyvaluestore:string prop ->
  ?cloudhsm:string prop ->
  ?cloudhsmv2:string prop ->
  ?cloudsearch:string prop ->
  ?cloudtrail:string prop ->
  ?cloudwatch:string prop ->
  ?cloudwatchevents:string prop ->
  ?cloudwatchevidently:string prop ->
  ?cloudwatchlog:string prop ->
  ?cloudwatchlogs:string prop ->
  ?cloudwatchobservabilityaccessmanager:string prop ->
  ?cloudwatchrum:string prop ->
  ?codeartifact:string prop ->
  ?codebuild:string prop ->
  ?codecatalyst:string prop ->
  ?codecommit:string prop ->
  ?codedeploy:string prop ->
  ?codeguruprofiler:string prop ->
  ?codegurureviewer:string prop ->
  ?codepipeline:string prop ->
  ?codestarconnections:string prop ->
  ?codestarnotifications:string prop ->
  ?cognitoidentity:string prop ->
  ?cognitoidentityprovider:string prop ->
  ?cognitoidp:string prop ->
  ?comprehend:string prop ->
  ?computeoptimizer:string prop ->
  ?config:string prop ->
  ?configservice:string prop ->
  ?connect:string prop ->
  ?connectcases:string prop ->
  ?controltower:string prop ->
  ?costandusagereportservice:string prop ->
  ?costexplorer:string prop ->
  ?costoptimizationhub:string prop ->
  ?cur:string prop ->
  ?customerprofiles:string prop ->
  ?databasemigration:string prop ->
  ?databasemigrationservice:string prop ->
  ?dataexchange:string prop ->
  ?datapipeline:string prop ->
  ?datasync:string prop ->
  ?dax:string prop ->
  ?deploy:string prop ->
  ?detective:string prop ->
  ?devicefarm:string prop ->
  ?devopsguru:string prop ->
  ?directconnect:string prop ->
  ?directoryservice:string prop ->
  ?dlm:string prop ->
  ?dms:string prop ->
  ?docdb:string prop ->
  ?docdbelastic:string prop ->
  ?ds:string prop ->
  ?dynamodb:string prop ->
  ?ec2:string prop ->
  ?ecr:string prop ->
  ?ecrpublic:string prop ->
  ?ecs:string prop ->
  ?efs:string prop ->
  ?eks:string prop ->
  ?elasticache:string prop ->
  ?elasticbeanstalk:string prop ->
  ?elasticloadbalancing:string prop ->
  ?elasticloadbalancingv2:string prop ->
  ?elasticsearch:string prop ->
  ?elasticsearchservice:string prop ->
  ?elastictranscoder:string prop ->
  ?elb:string prop ->
  ?elbv2:string prop ->
  ?emr:string prop ->
  ?emrcontainers:string prop ->
  ?emrserverless:string prop ->
  ?es:string prop ->
  ?eventbridge:string prop ->
  ?events:string prop ->
  ?evidently:string prop ->
  ?finspace:string prop ->
  ?firehose:string prop ->
  ?fis:string prop ->
  ?fms:string prop ->
  ?fsx:string prop ->
  ?gamelift:string prop ->
  ?glacier:string prop ->
  ?globalaccelerator:string prop ->
  ?glue:string prop ->
  ?grafana:string prop ->
  ?greengrass:string prop ->
  ?groundstation:string prop ->
  ?guardduty:string prop ->
  ?healthlake:string prop ->
  ?iam:string prop ->
  ?identitystore:string prop ->
  ?imagebuilder:string prop ->
  ?inspector:string prop ->
  ?inspector2:string prop ->
  ?inspectorv2:string prop ->
  ?internetmonitor:string prop ->
  ?iot:string prop ->
  ?iotanalytics:string prop ->
  ?iotevents:string prop ->
  ?ivs:string prop ->
  ?ivschat:string prop ->
  ?kafka:string prop ->
  ?kafkaconnect:string prop ->
  ?kendra:string prop ->
  ?keyspaces:string prop ->
  ?kinesis:string prop ->
  ?kinesisanalytics:string prop ->
  ?kinesisanalyticsv2:string prop ->
  ?kinesisvideo:string prop ->
  ?kms:string prop ->
  ?lakeformation:string prop ->
  ?lambda:string prop ->
  ?launchwizard:string prop ->
  ?lex:string prop ->
  ?lexmodelbuilding:string prop ->
  ?lexmodelbuildingservice:string prop ->
  ?lexmodels:string prop ->
  ?lexmodelsv2:string prop ->
  ?lexv2models:string prop ->
  ?licensemanager:string prop ->
  ?lightsail:string prop ->
  ?location:string prop ->
  ?locationservice:string prop ->
  ?logs:string prop ->
  ?lookoutmetrics:string prop ->
  ?m2:string prop ->
  ?macie2:string prop ->
  ?managedgrafana:string prop ->
  ?mediaconnect:string prop ->
  ?mediaconvert:string prop ->
  ?medialive:string prop ->
  ?mediapackage:string prop ->
  ?mediapackagev2:string prop ->
  ?mediastore:string prop ->
  ?memorydb:string prop ->
  ?mq:string prop ->
  ?msk:string prop ->
  ?mwaa:string prop ->
  ?neptune:string prop ->
  ?networkfirewall:string prop ->
  ?networkmanager:string prop ->
  ?oam:string prop ->
  ?opensearch:string prop ->
  ?opensearchingestion:string prop ->
  ?opensearchserverless:string prop ->
  ?opensearchservice:string prop ->
  ?opsworks:string prop ->
  ?organizations:string prop ->
  ?osis:string prop ->
  ?outposts:string prop ->
  ?pcaconnectorad:string prop ->
  ?pinpoint:string prop ->
  ?pipes:string prop ->
  ?polly:string prop ->
  ?pricing:string prop ->
  ?prometheus:string prop ->
  ?prometheusservice:string prop ->
  ?qbusiness:string prop ->
  ?qldb:string prop ->
  ?quicksight:string prop ->
  ?ram:string prop ->
  ?rbin:string prop ->
  ?rds:string prop ->
  ?recyclebin:string prop ->
  ?redshift:string prop ->
  ?redshiftdata:string prop ->
  ?redshiftdataapiservice:string prop ->
  ?redshiftserverless:string prop ->
  ?rekognition:string prop ->
  ?resourceexplorer2:string prop ->
  ?resourcegroups:string prop ->
  ?resourcegroupstagging:string prop ->
  ?resourcegroupstaggingapi:string prop ->
  ?rolesanywhere:string prop ->
  ?route53:string prop ->
  ?route53domains:string prop ->
  ?route53recoverycontrolconfig:string prop ->
  ?route53recoveryreadiness:string prop ->
  ?route53resolver:string prop ->
  ?rum:string prop ->
  ?s3:string prop ->
  ?s3api:string prop ->
  ?s3control:string prop ->
  ?s3outposts:string prop ->
  ?sagemaker:string prop ->
  ?scheduler:string prop ->
  ?schemas:string prop ->
  ?sdb:string prop ->
  ?secretsmanager:string prop ->
  ?securityhub:string prop ->
  ?securitylake:string prop ->
  ?serverlessapplicationrepository:string prop ->
  ?serverlessapprepo:string prop ->
  ?serverlessrepo:string prop ->
  ?servicecatalog:string prop ->
  ?servicecatalogappregistry:string prop ->
  ?servicediscovery:string prop ->
  ?servicequotas:string prop ->
  ?ses:string prop ->
  ?sesv2:string prop ->
  ?sfn:string prop ->
  ?shield:string prop ->
  ?signer:string prop ->
  ?simpledb:string prop ->
  ?sns:string prop ->
  ?sqs:string prop ->
  ?ssm:string prop ->
  ?ssmcontacts:string prop ->
  ?ssmincidents:string prop ->
  ?ssmsap:string prop ->
  ?sso:string prop ->
  ?ssoadmin:string prop ->
  ?stepfunctions:string prop ->
  ?storagegateway:string prop ->
  ?sts:string prop ->
  ?swf:string prop ->
  ?synthetics:string prop ->
  ?timestreamwrite:string prop ->
  ?transcribe:string prop ->
  ?transcribeservice:string prop ->
  ?transfer:string prop ->
  ?verifiedpermissions:string prop ->
  ?vpclattice:string prop ->
  ?waf:string prop ->
  ?wafregional:string prop ->
  ?wafv2:string prop ->
  ?wellarchitected:string prop ->
  ?worklink:string prop ->
  ?workspaces:string prop ->
  ?xray:string prop ->
  unit ->
  endpoints

type ignore_tags

val ignore_tags :
  ?key_prefixes:string prop list ->
  ?keys:string prop list ->
  unit ->
  ignore_tags

type aws

val aws :
  ?access_key:string prop ->
  ?allowed_account_ids:string prop list ->
  ?custom_ca_bundle:string prop ->
  ?ec2_metadata_service_endpoint:string prop ->
  ?ec2_metadata_service_endpoint_mode:string prop ->
  ?forbidden_account_ids:string prop list ->
  ?http_proxy:string prop ->
  ?https_proxy:string prop ->
  ?insecure:bool prop ->
  ?max_retries:float prop ->
  ?no_proxy:string prop ->
  ?profile:string prop ->
  ?region:string prop ->
  ?retry_mode:string prop ->
  ?s3_us_east_1_regional_endpoint:string prop ->
  ?s3_use_path_style:bool prop ->
  ?secret_key:string prop ->
  ?shared_config_files:string prop list ->
  ?shared_credentials_files:string prop list ->
  ?skip_credentials_validation:bool prop ->
  ?skip_metadata_api_check:string prop ->
  ?skip_region_validation:bool prop ->
  ?skip_requesting_account_id:bool prop ->
  ?sts_region:string prop ->
  ?token:string prop ->
  ?token_bucket_rate_limiter_capacity:float prop ->
  ?use_dualstack_endpoint:bool prop ->
  ?use_fips_endpoint:bool prop ->
  ?assume_role:assume_role list ->
  ?assume_role_with_web_identity:assume_role_with_web_identity list ->
  ?default_tags:default_tags list ->
  ?ignore_tags:ignore_tags list ->
  endpoints:endpoints list ->
  unit ->
  aws

val yojson_of_aws : aws -> json

(** PROVIDER REGISTRATION *)

val register :
  ?tf_module:tf_module ->
  ?access_key:string prop ->
  ?allowed_account_ids:string prop list ->
  ?custom_ca_bundle:string prop ->
  ?ec2_metadata_service_endpoint:string prop ->
  ?ec2_metadata_service_endpoint_mode:string prop ->
  ?forbidden_account_ids:string prop list ->
  ?http_proxy:string prop ->
  ?https_proxy:string prop ->
  ?insecure:bool prop ->
  ?max_retries:float prop ->
  ?no_proxy:string prop ->
  ?profile:string prop ->
  ?region:string prop ->
  ?retry_mode:string prop ->
  ?s3_us_east_1_regional_endpoint:string prop ->
  ?s3_use_path_style:bool prop ->
  ?secret_key:string prop ->
  ?shared_config_files:string prop list ->
  ?shared_credentials_files:string prop list ->
  ?skip_credentials_validation:bool prop ->
  ?skip_metadata_api_check:string prop ->
  ?skip_region_validation:bool prop ->
  ?skip_requesting_account_id:bool prop ->
  ?sts_region:string prop ->
  ?token:string prop ->
  ?token_bucket_rate_limiter_capacity:float prop ->
  ?use_dualstack_endpoint:bool prop ->
  ?use_fips_endpoint:bool prop ->
  ?assume_role:assume_role list ->
  ?assume_role_with_web_identity:assume_role_with_web_identity list ->
  ?default_tags:default_tags list ->
  ?ignore_tags:ignore_tags list ->
  endpoints:endpoints list ->
  version:string ->
  unit ->
  unit

val make :
  ?access_key:string prop ->
  ?allowed_account_ids:string prop list ->
  ?custom_ca_bundle:string prop ->
  ?ec2_metadata_service_endpoint:string prop ->
  ?ec2_metadata_service_endpoint_mode:string prop ->
  ?forbidden_account_ids:string prop list ->
  ?http_proxy:string prop ->
  ?https_proxy:string prop ->
  ?insecure:bool prop ->
  ?max_retries:float prop ->
  ?no_proxy:string prop ->
  ?profile:string prop ->
  ?region:string prop ->
  ?retry_mode:string prop ->
  ?s3_us_east_1_regional_endpoint:string prop ->
  ?s3_use_path_style:bool prop ->
  ?secret_key:string prop ->
  ?shared_config_files:string prop list ->
  ?shared_credentials_files:string prop list ->
  ?skip_credentials_validation:bool prop ->
  ?skip_metadata_api_check:string prop ->
  ?skip_region_validation:bool prop ->
  ?skip_requesting_account_id:bool prop ->
  ?sts_region:string prop ->
  ?token:string prop ->
  ?token_bucket_rate_limiter_capacity:float prop ->
  ?use_dualstack_endpoint:bool prop ->
  ?use_fips_endpoint:bool prop ->
  ?assume_role:assume_role list ->
  ?assume_role_with_web_identity:assume_role_with_web_identity list ->
  ?default_tags:default_tags list ->
  ?ignore_tags:ignore_tags list ->
  endpoints:endpoints list ->
  unit ->
  Tf_core.provider
