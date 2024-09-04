(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type assume_role = {
  duration : string prop option; [@option]
  external_id : string prop option; [@option]
  policy : string prop option; [@option]
  policy_arns : string prop list option; [@option]
  role_arn : string prop option; [@option]
  session_name : string prop option; [@option]
  source_identity : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  transitive_tag_keys : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : assume_role) -> ()

let yojson_of_assume_role =
  (function
   | {
       duration = v_duration;
       external_id = v_external_id;
       policy = v_policy;
       policy_arns = v_policy_arns;
       role_arn = v_role_arn;
       session_name = v_session_name;
       source_identity = v_source_identity;
       tags = v_tags;
       transitive_tag_keys = v_transitive_tag_keys;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_transitive_tag_keys with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "transitive_tag_keys", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_identity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_identity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_session_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "session_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "policy_arns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_external_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "external_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "duration", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : assume_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_assume_role

[@@@deriving.end]

type assume_role_with_web_identity = {
  duration : string prop option; [@option]
  policy : string prop option; [@option]
  policy_arns : string prop list option; [@option]
  role_arn : string prop option; [@option]
  session_name : string prop option; [@option]
  web_identity_token : string prop option; [@option]
  web_identity_token_file : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : assume_role_with_web_identity) -> ()

let yojson_of_assume_role_with_web_identity =
  (function
   | {
       duration = v_duration;
       policy = v_policy;
       policy_arns = v_policy_arns;
       role_arn = v_role_arn;
       session_name = v_session_name;
       web_identity_token = v_web_identity_token;
       web_identity_token_file = v_web_identity_token_file;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_web_identity_token_file with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "web_identity_token_file", arg in
             bnd :: bnds
       in
       let bnds =
         match v_web_identity_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "web_identity_token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_session_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "session_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "policy_arns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "duration", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : assume_role_with_web_identity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_assume_role_with_web_identity

[@@@deriving.end]

type default_tags = {
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_tags) -> ()

let yojson_of_default_tags =
  (function
   | { tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_tags

[@@@deriving.end]

type endpoints = {
  accessanalyzer : string prop option; [@option]
  account : string prop option; [@option]
  acm : string prop option; [@option]
  acmpca : string prop option; [@option]
  amg : string prop option; [@option]
  amp : string prop option; [@option]
  amplify : string prop option; [@option]
  apigateway : string prop option; [@option]
  apigatewayv2 : string prop option; [@option]
  appautoscaling : string prop option; [@option]
  appconfig : string prop option; [@option]
  appfabric : string prop option; [@option]
  appflow : string prop option; [@option]
  appintegrations : string prop option; [@option]
  appintegrationsservice : string prop option; [@option]
  applicationautoscaling : string prop option; [@option]
  applicationinsights : string prop option; [@option]
  applicationsignals : string prop option; [@option]
  appmesh : string prop option; [@option]
  appregistry : string prop option; [@option]
  apprunner : string prop option; [@option]
  appstream : string prop option; [@option]
  appsync : string prop option; [@option]
  athena : string prop option; [@option]
  auditmanager : string prop option; [@option]
  autoscaling : string prop option; [@option]
  autoscalingplans : string prop option; [@option]
  backup : string prop option; [@option]
  batch : string prop option; [@option]
  bcmdataexports : string prop option; [@option]
  beanstalk : string prop option; [@option]
  bedrock : string prop option; [@option]
  bedrockagent : string prop option; [@option]
  budgets : string prop option; [@option]
  ce : string prop option; [@option]
  chatbot : string prop option; [@option]
  chime : string prop option; [@option]
  chimesdkmediapipelines : string prop option; [@option]
  chimesdkvoice : string prop option; [@option]
  cleanrooms : string prop option; [@option]
  cloud9 : string prop option; [@option]
  cloudcontrol : string prop option; [@option]
  cloudcontrolapi : string prop option; [@option]
  cloudformation : string prop option; [@option]
  cloudfront : string prop option; [@option]
  cloudfrontkeyvaluestore : string prop option; [@option]
  cloudhsm : string prop option; [@option]
  cloudhsmv2 : string prop option; [@option]
  cloudsearch : string prop option; [@option]
  cloudtrail : string prop option; [@option]
  cloudwatch : string prop option; [@option]
  cloudwatchevents : string prop option; [@option]
  cloudwatchevidently : string prop option; [@option]
  cloudwatchlog : string prop option; [@option]
  cloudwatchlogs : string prop option; [@option]
  cloudwatchobservabilityaccessmanager : string prop option;
      [@option]
  cloudwatchrum : string prop option; [@option]
  codeartifact : string prop option; [@option]
  codebuild : string prop option; [@option]
  codecatalyst : string prop option; [@option]
  codecommit : string prop option; [@option]
  codedeploy : string prop option; [@option]
  codeguruprofiler : string prop option; [@option]
  codegurureviewer : string prop option; [@option]
  codepipeline : string prop option; [@option]
  codestarconnections : string prop option; [@option]
  codestarnotifications : string prop option; [@option]
  cognitoidentity : string prop option; [@option]
  cognitoidentityprovider : string prop option; [@option]
  cognitoidp : string prop option; [@option]
  comprehend : string prop option; [@option]
  computeoptimizer : string prop option; [@option]
  config : string prop option; [@option]
  configservice : string prop option; [@option]
  connect : string prop option; [@option]
  connectcases : string prop option; [@option]
  controltower : string prop option; [@option]
  costandusagereportservice : string prop option; [@option]
  costexplorer : string prop option; [@option]
  costoptimizationhub : string prop option; [@option]
  cur : string prop option; [@option]
  customerprofiles : string prop option; [@option]
  databasemigration : string prop option; [@option]
  databasemigrationservice : string prop option; [@option]
  databrew : string prop option; [@option]
  dataexchange : string prop option; [@option]
  datapipeline : string prop option; [@option]
  datasync : string prop option; [@option]
  datazone : string prop option; [@option]
  dax : string prop option; [@option]
  deploy : string prop option; [@option]
  detective : string prop option; [@option]
  devicefarm : string prop option; [@option]
  devopsguru : string prop option; [@option]
  directconnect : string prop option; [@option]
  directoryservice : string prop option; [@option]
  dlm : string prop option; [@option]
  dms : string prop option; [@option]
  docdb : string prop option; [@option]
  docdbelastic : string prop option; [@option]
  drs : string prop option; [@option]
  ds : string prop option; [@option]
  dynamodb : string prop option; [@option]
  ec2 : string prop option; [@option]
  ecr : string prop option; [@option]
  ecrpublic : string prop option; [@option]
  ecs : string prop option; [@option]
  efs : string prop option; [@option]
  eks : string prop option; [@option]
  elasticache : string prop option; [@option]
  elasticbeanstalk : string prop option; [@option]
  elasticloadbalancing : string prop option; [@option]
  elasticloadbalancingv2 : string prop option; [@option]
  elasticsearch : string prop option; [@option]
  elasticsearchservice : string prop option; [@option]
  elastictranscoder : string prop option; [@option]
  elb : string prop option; [@option]
  elbv2 : string prop option; [@option]
  emr : string prop option; [@option]
  emrcontainers : string prop option; [@option]
  emrserverless : string prop option; [@option]
  es : string prop option; [@option]
  eventbridge : string prop option; [@option]
  events : string prop option; [@option]
  evidently : string prop option; [@option]
  finspace : string prop option; [@option]
  firehose : string prop option; [@option]
  fis : string prop option; [@option]
  fms : string prop option; [@option]
  fsx : string prop option; [@option]
  gamelift : string prop option; [@option]
  glacier : string prop option; [@option]
  globalaccelerator : string prop option; [@option]
  glue : string prop option; [@option]
  gluedatabrew : string prop option; [@option]
  grafana : string prop option; [@option]
  greengrass : string prop option; [@option]
  groundstation : string prop option; [@option]
  guardduty : string prop option; [@option]
  healthlake : string prop option; [@option]
  iam : string prop option; [@option]
  identitystore : string prop option; [@option]
  imagebuilder : string prop option; [@option]
  inspector : string prop option; [@option]
  inspector2 : string prop option; [@option]
  inspectorv2 : string prop option; [@option]
  internetmonitor : string prop option; [@option]
  iot : string prop option; [@option]
  iotanalytics : string prop option; [@option]
  iotevents : string prop option; [@option]
  ivs : string prop option; [@option]
  ivschat : string prop option; [@option]
  kafka : string prop option; [@option]
  kafkaconnect : string prop option; [@option]
  kendra : string prop option; [@option]
  keyspaces : string prop option; [@option]
  kinesis : string prop option; [@option]
  kinesisanalytics : string prop option; [@option]
  kinesisanalyticsv2 : string prop option; [@option]
  kinesisvideo : string prop option; [@option]
  kms : string prop option; [@option]
  lakeformation : string prop option; [@option]
  lambda : string prop option; [@option]
  launchwizard : string prop option; [@option]
  lex : string prop option; [@option]
  lexmodelbuilding : string prop option; [@option]
  lexmodelbuildingservice : string prop option; [@option]
  lexmodels : string prop option; [@option]
  lexmodelsv2 : string prop option; [@option]
  lexv2models : string prop option; [@option]
  licensemanager : string prop option; [@option]
  lightsail : string prop option; [@option]
  location : string prop option; [@option]
  locationservice : string prop option; [@option]
  logs : string prop option; [@option]
  lookoutmetrics : string prop option; [@option]
  m2 : string prop option; [@option]
  macie2 : string prop option; [@option]
  managedgrafana : string prop option; [@option]
  mediaconnect : string prop option; [@option]
  mediaconvert : string prop option; [@option]
  medialive : string prop option; [@option]
  mediapackage : string prop option; [@option]
  mediapackagev2 : string prop option; [@option]
  mediastore : string prop option; [@option]
  memorydb : string prop option; [@option]
  mq : string prop option; [@option]
  msk : string prop option; [@option]
  mwaa : string prop option; [@option]
  neptune : string prop option; [@option]
  neptunegraph : string prop option; [@option]
  networkfirewall : string prop option; [@option]
  networkmanager : string prop option; [@option]
  networkmonitor : string prop option; [@option]
  oam : string prop option; [@option]
  opensearch : string prop option; [@option]
  opensearchingestion : string prop option; [@option]
  opensearchserverless : string prop option; [@option]
  opensearchservice : string prop option; [@option]
  opsworks : string prop option; [@option]
  organizations : string prop option; [@option]
  osis : string prop option; [@option]
  outposts : string prop option; [@option]
  paymentcryptography : string prop option; [@option]
  pcaconnectorad : string prop option; [@option]
  pinpoint : string prop option; [@option]
  pipes : string prop option; [@option]
  polly : string prop option; [@option]
  pricing : string prop option; [@option]
  prometheus : string prop option; [@option]
  prometheusservice : string prop option; [@option]
  qbusiness : string prop option; [@option]
  qldb : string prop option; [@option]
  quicksight : string prop option; [@option]
  ram : string prop option; [@option]
  rbin : string prop option; [@option]
  rds : string prop option; [@option]
  recyclebin : string prop option; [@option]
  redshift : string prop option; [@option]
  redshiftdata : string prop option; [@option]
  redshiftdataapiservice : string prop option; [@option]
  redshiftserverless : string prop option; [@option]
  rekognition : string prop option; [@option]
  resourceexplorer2 : string prop option; [@option]
  resourcegroups : string prop option; [@option]
  resourcegroupstagging : string prop option; [@option]
  resourcegroupstaggingapi : string prop option; [@option]
  rolesanywhere : string prop option; [@option]
  route53 : string prop option; [@option]
  route53domains : string prop option; [@option]
  route53profiles : string prop option; [@option]
  route53recoverycontrolconfig : string prop option; [@option]
  route53recoveryreadiness : string prop option; [@option]
  route53resolver : string prop option; [@option]
  rum : string prop option; [@option]
  s3 : string prop option; [@option]
  s3api : string prop option; [@option]
  s3control : string prop option; [@option]
  s3outposts : string prop option; [@option]
  sagemaker : string prop option; [@option]
  scheduler : string prop option; [@option]
  schemas : string prop option; [@option]
  sdb : string prop option; [@option]
  secretsmanager : string prop option; [@option]
  securityhub : string prop option; [@option]
  securitylake : string prop option; [@option]
  serverlessapplicationrepository : string prop option; [@option]
  serverlessapprepo : string prop option; [@option]
  serverlessrepo : string prop option; [@option]
  servicecatalog : string prop option; [@option]
  servicecatalogappregistry : string prop option; [@option]
  servicediscovery : string prop option; [@option]
  servicequotas : string prop option; [@option]
  ses : string prop option; [@option]
  sesv2 : string prop option; [@option]
  sfn : string prop option; [@option]
  shield : string prop option; [@option]
  signer : string prop option; [@option]
  simpledb : string prop option; [@option]
  sns : string prop option; [@option]
  sqs : string prop option; [@option]
  ssm : string prop option; [@option]
  ssmcontacts : string prop option; [@option]
  ssmincidents : string prop option; [@option]
  ssmsap : string prop option; [@option]
  sso : string prop option; [@option]
  ssoadmin : string prop option; [@option]
  stepfunctions : string prop option; [@option]
  storagegateway : string prop option; [@option]
  sts : string prop option; [@option]
  swf : string prop option; [@option]
  synthetics : string prop option; [@option]
  timestreaminfluxdb : string prop option; [@option]
  timestreamwrite : string prop option; [@option]
  transcribe : string prop option; [@option]
  transcribeservice : string prop option; [@option]
  transfer : string prop option; [@option]
  verifiedpermissions : string prop option; [@option]
  vpclattice : string prop option; [@option]
  waf : string prop option; [@option]
  wafregional : string prop option; [@option]
  wafv2 : string prop option; [@option]
  wellarchitected : string prop option; [@option]
  worklink : string prop option; [@option]
  workspaces : string prop option; [@option]
  workspacesweb : string prop option; [@option]
  xray : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoints) -> ()

let yojson_of_endpoints =
  (function
   | {
       accessanalyzer = v_accessanalyzer;
       account = v_account;
       acm = v_acm;
       acmpca = v_acmpca;
       amg = v_amg;
       amp = v_amp;
       amplify = v_amplify;
       apigateway = v_apigateway;
       apigatewayv2 = v_apigatewayv2;
       appautoscaling = v_appautoscaling;
       appconfig = v_appconfig;
       appfabric = v_appfabric;
       appflow = v_appflow;
       appintegrations = v_appintegrations;
       appintegrationsservice = v_appintegrationsservice;
       applicationautoscaling = v_applicationautoscaling;
       applicationinsights = v_applicationinsights;
       applicationsignals = v_applicationsignals;
       appmesh = v_appmesh;
       appregistry = v_appregistry;
       apprunner = v_apprunner;
       appstream = v_appstream;
       appsync = v_appsync;
       athena = v_athena;
       auditmanager = v_auditmanager;
       autoscaling = v_autoscaling;
       autoscalingplans = v_autoscalingplans;
       backup = v_backup;
       batch = v_batch;
       bcmdataexports = v_bcmdataexports;
       beanstalk = v_beanstalk;
       bedrock = v_bedrock;
       bedrockagent = v_bedrockagent;
       budgets = v_budgets;
       ce = v_ce;
       chatbot = v_chatbot;
       chime = v_chime;
       chimesdkmediapipelines = v_chimesdkmediapipelines;
       chimesdkvoice = v_chimesdkvoice;
       cleanrooms = v_cleanrooms;
       cloud9 = v_cloud9;
       cloudcontrol = v_cloudcontrol;
       cloudcontrolapi = v_cloudcontrolapi;
       cloudformation = v_cloudformation;
       cloudfront = v_cloudfront;
       cloudfrontkeyvaluestore = v_cloudfrontkeyvaluestore;
       cloudhsm = v_cloudhsm;
       cloudhsmv2 = v_cloudhsmv2;
       cloudsearch = v_cloudsearch;
       cloudtrail = v_cloudtrail;
       cloudwatch = v_cloudwatch;
       cloudwatchevents = v_cloudwatchevents;
       cloudwatchevidently = v_cloudwatchevidently;
       cloudwatchlog = v_cloudwatchlog;
       cloudwatchlogs = v_cloudwatchlogs;
       cloudwatchobservabilityaccessmanager =
         v_cloudwatchobservabilityaccessmanager;
       cloudwatchrum = v_cloudwatchrum;
       codeartifact = v_codeartifact;
       codebuild = v_codebuild;
       codecatalyst = v_codecatalyst;
       codecommit = v_codecommit;
       codedeploy = v_codedeploy;
       codeguruprofiler = v_codeguruprofiler;
       codegurureviewer = v_codegurureviewer;
       codepipeline = v_codepipeline;
       codestarconnections = v_codestarconnections;
       codestarnotifications = v_codestarnotifications;
       cognitoidentity = v_cognitoidentity;
       cognitoidentityprovider = v_cognitoidentityprovider;
       cognitoidp = v_cognitoidp;
       comprehend = v_comprehend;
       computeoptimizer = v_computeoptimizer;
       config = v_config;
       configservice = v_configservice;
       connect = v_connect;
       connectcases = v_connectcases;
       controltower = v_controltower;
       costandusagereportservice = v_costandusagereportservice;
       costexplorer = v_costexplorer;
       costoptimizationhub = v_costoptimizationhub;
       cur = v_cur;
       customerprofiles = v_customerprofiles;
       databasemigration = v_databasemigration;
       databasemigrationservice = v_databasemigrationservice;
       databrew = v_databrew;
       dataexchange = v_dataexchange;
       datapipeline = v_datapipeline;
       datasync = v_datasync;
       datazone = v_datazone;
       dax = v_dax;
       deploy = v_deploy;
       detective = v_detective;
       devicefarm = v_devicefarm;
       devopsguru = v_devopsguru;
       directconnect = v_directconnect;
       directoryservice = v_directoryservice;
       dlm = v_dlm;
       dms = v_dms;
       docdb = v_docdb;
       docdbelastic = v_docdbelastic;
       drs = v_drs;
       ds = v_ds;
       dynamodb = v_dynamodb;
       ec2 = v_ec2;
       ecr = v_ecr;
       ecrpublic = v_ecrpublic;
       ecs = v_ecs;
       efs = v_efs;
       eks = v_eks;
       elasticache = v_elasticache;
       elasticbeanstalk = v_elasticbeanstalk;
       elasticloadbalancing = v_elasticloadbalancing;
       elasticloadbalancingv2 = v_elasticloadbalancingv2;
       elasticsearch = v_elasticsearch;
       elasticsearchservice = v_elasticsearchservice;
       elastictranscoder = v_elastictranscoder;
       elb = v_elb;
       elbv2 = v_elbv2;
       emr = v_emr;
       emrcontainers = v_emrcontainers;
       emrserverless = v_emrserverless;
       es = v_es;
       eventbridge = v_eventbridge;
       events = v_events;
       evidently = v_evidently;
       finspace = v_finspace;
       firehose = v_firehose;
       fis = v_fis;
       fms = v_fms;
       fsx = v_fsx;
       gamelift = v_gamelift;
       glacier = v_glacier;
       globalaccelerator = v_globalaccelerator;
       glue = v_glue;
       gluedatabrew = v_gluedatabrew;
       grafana = v_grafana;
       greengrass = v_greengrass;
       groundstation = v_groundstation;
       guardduty = v_guardduty;
       healthlake = v_healthlake;
       iam = v_iam;
       identitystore = v_identitystore;
       imagebuilder = v_imagebuilder;
       inspector = v_inspector;
       inspector2 = v_inspector2;
       inspectorv2 = v_inspectorv2;
       internetmonitor = v_internetmonitor;
       iot = v_iot;
       iotanalytics = v_iotanalytics;
       iotevents = v_iotevents;
       ivs = v_ivs;
       ivschat = v_ivschat;
       kafka = v_kafka;
       kafkaconnect = v_kafkaconnect;
       kendra = v_kendra;
       keyspaces = v_keyspaces;
       kinesis = v_kinesis;
       kinesisanalytics = v_kinesisanalytics;
       kinesisanalyticsv2 = v_kinesisanalyticsv2;
       kinesisvideo = v_kinesisvideo;
       kms = v_kms;
       lakeformation = v_lakeformation;
       lambda = v_lambda;
       launchwizard = v_launchwizard;
       lex = v_lex;
       lexmodelbuilding = v_lexmodelbuilding;
       lexmodelbuildingservice = v_lexmodelbuildingservice;
       lexmodels = v_lexmodels;
       lexmodelsv2 = v_lexmodelsv2;
       lexv2models = v_lexv2models;
       licensemanager = v_licensemanager;
       lightsail = v_lightsail;
       location = v_location;
       locationservice = v_locationservice;
       logs = v_logs;
       lookoutmetrics = v_lookoutmetrics;
       m2 = v_m2;
       macie2 = v_macie2;
       managedgrafana = v_managedgrafana;
       mediaconnect = v_mediaconnect;
       mediaconvert = v_mediaconvert;
       medialive = v_medialive;
       mediapackage = v_mediapackage;
       mediapackagev2 = v_mediapackagev2;
       mediastore = v_mediastore;
       memorydb = v_memorydb;
       mq = v_mq;
       msk = v_msk;
       mwaa = v_mwaa;
       neptune = v_neptune;
       neptunegraph = v_neptunegraph;
       networkfirewall = v_networkfirewall;
       networkmanager = v_networkmanager;
       networkmonitor = v_networkmonitor;
       oam = v_oam;
       opensearch = v_opensearch;
       opensearchingestion = v_opensearchingestion;
       opensearchserverless = v_opensearchserverless;
       opensearchservice = v_opensearchservice;
       opsworks = v_opsworks;
       organizations = v_organizations;
       osis = v_osis;
       outposts = v_outposts;
       paymentcryptography = v_paymentcryptography;
       pcaconnectorad = v_pcaconnectorad;
       pinpoint = v_pinpoint;
       pipes = v_pipes;
       polly = v_polly;
       pricing = v_pricing;
       prometheus = v_prometheus;
       prometheusservice = v_prometheusservice;
       qbusiness = v_qbusiness;
       qldb = v_qldb;
       quicksight = v_quicksight;
       ram = v_ram;
       rbin = v_rbin;
       rds = v_rds;
       recyclebin = v_recyclebin;
       redshift = v_redshift;
       redshiftdata = v_redshiftdata;
       redshiftdataapiservice = v_redshiftdataapiservice;
       redshiftserverless = v_redshiftserverless;
       rekognition = v_rekognition;
       resourceexplorer2 = v_resourceexplorer2;
       resourcegroups = v_resourcegroups;
       resourcegroupstagging = v_resourcegroupstagging;
       resourcegroupstaggingapi = v_resourcegroupstaggingapi;
       rolesanywhere = v_rolesanywhere;
       route53 = v_route53;
       route53domains = v_route53domains;
       route53profiles = v_route53profiles;
       route53recoverycontrolconfig = v_route53recoverycontrolconfig;
       route53recoveryreadiness = v_route53recoveryreadiness;
       route53resolver = v_route53resolver;
       rum = v_rum;
       s3 = v_s3;
       s3api = v_s3api;
       s3control = v_s3control;
       s3outposts = v_s3outposts;
       sagemaker = v_sagemaker;
       scheduler = v_scheduler;
       schemas = v_schemas;
       sdb = v_sdb;
       secretsmanager = v_secretsmanager;
       securityhub = v_securityhub;
       securitylake = v_securitylake;
       serverlessapplicationrepository =
         v_serverlessapplicationrepository;
       serverlessapprepo = v_serverlessapprepo;
       serverlessrepo = v_serverlessrepo;
       servicecatalog = v_servicecatalog;
       servicecatalogappregistry = v_servicecatalogappregistry;
       servicediscovery = v_servicediscovery;
       servicequotas = v_servicequotas;
       ses = v_ses;
       sesv2 = v_sesv2;
       sfn = v_sfn;
       shield = v_shield;
       signer = v_signer;
       simpledb = v_simpledb;
       sns = v_sns;
       sqs = v_sqs;
       ssm = v_ssm;
       ssmcontacts = v_ssmcontacts;
       ssmincidents = v_ssmincidents;
       ssmsap = v_ssmsap;
       sso = v_sso;
       ssoadmin = v_ssoadmin;
       stepfunctions = v_stepfunctions;
       storagegateway = v_storagegateway;
       sts = v_sts;
       swf = v_swf;
       synthetics = v_synthetics;
       timestreaminfluxdb = v_timestreaminfluxdb;
       timestreamwrite = v_timestreamwrite;
       transcribe = v_transcribe;
       transcribeservice = v_transcribeservice;
       transfer = v_transfer;
       verifiedpermissions = v_verifiedpermissions;
       vpclattice = v_vpclattice;
       waf = v_waf;
       wafregional = v_wafregional;
       wafv2 = v_wafv2;
       wellarchitected = v_wellarchitected;
       worklink = v_worklink;
       workspaces = v_workspaces;
       workspacesweb = v_workspacesweb;
       xray = v_xray;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_xray with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "xray", arg in
             bnd :: bnds
       in
       let bnds =
         match v_workspacesweb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "workspacesweb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_workspaces with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "workspaces", arg in
             bnd :: bnds
       in
       let bnds =
         match v_worklink with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "worklink", arg in
             bnd :: bnds
       in
       let bnds =
         match v_wellarchitected with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "wellarchitected", arg in
             bnd :: bnds
       in
       let bnds =
         match v_wafv2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "wafv2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_wafregional with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "wafregional", arg in
             bnd :: bnds
       in
       let bnds =
         match v_waf with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "waf", arg in
             bnd :: bnds
       in
       let bnds =
         match v_vpclattice with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpclattice", arg in
             bnd :: bnds
       in
       let bnds =
         match v_verifiedpermissions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "verifiedpermissions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_transfer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "transfer", arg in
             bnd :: bnds
       in
       let bnds =
         match v_transcribeservice with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "transcribeservice", arg in
             bnd :: bnds
       in
       let bnds =
         match v_transcribe with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "transcribe", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timestreamwrite with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timestreamwrite", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timestreaminfluxdb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timestreaminfluxdb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_synthetics with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "synthetics", arg in
             bnd :: bnds
       in
       let bnds =
         match v_swf with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "swf", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sts", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storagegateway with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storagegateway", arg in
             bnd :: bnds
       in
       let bnds =
         match v_stepfunctions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stepfunctions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssoadmin with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssoadmin", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sso with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sso", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssmsap with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssmsap", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssmincidents with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssmincidents", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssmcontacts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssmcontacts", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssm", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sqs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sqs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_simpledb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "simpledb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_signer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "signer", arg in
             bnd :: bnds
       in
       let bnds =
         match v_shield with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "shield", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sfn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sfn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sesv2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sesv2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ses", arg in
             bnd :: bnds
       in
       let bnds =
         match v_servicequotas with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "servicequotas", arg in
             bnd :: bnds
       in
       let bnds =
         match v_servicediscovery with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "servicediscovery", arg in
             bnd :: bnds
       in
       let bnds =
         match v_servicecatalogappregistry with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "servicecatalogappregistry", arg in
             bnd :: bnds
       in
       let bnds =
         match v_servicecatalog with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "servicecatalog", arg in
             bnd :: bnds
       in
       let bnds =
         match v_serverlessrepo with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "serverlessrepo", arg in
             bnd :: bnds
       in
       let bnds =
         match v_serverlessapprepo with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "serverlessapprepo", arg in
             bnd :: bnds
       in
       let bnds =
         match v_serverlessapplicationrepository with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "serverlessapplicationrepository", arg in
             bnd :: bnds
       in
       let bnds =
         match v_securitylake with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "securitylake", arg in
             bnd :: bnds
       in
       let bnds =
         match v_securityhub with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "securityhub", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secretsmanager with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secretsmanager", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sdb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sdb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_schemas with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schemas", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scheduler with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scheduler", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sagemaker with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sagemaker", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3outposts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3outposts", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3control", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3api with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3api", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rum with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rum", arg in
             bnd :: bnds
       in
       let bnds =
         match v_route53resolver with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "route53resolver", arg in
             bnd :: bnds
       in
       let bnds =
         match v_route53recoveryreadiness with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "route53recoveryreadiness", arg in
             bnd :: bnds
       in
       let bnds =
         match v_route53recoverycontrolconfig with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "route53recoverycontrolconfig", arg in
             bnd :: bnds
       in
       let bnds =
         match v_route53profiles with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "route53profiles", arg in
             bnd :: bnds
       in
       let bnds =
         match v_route53domains with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "route53domains", arg in
             bnd :: bnds
       in
       let bnds =
         match v_route53 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "route53", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rolesanywhere with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rolesanywhere", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resourcegroupstaggingapi with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resourcegroupstaggingapi", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resourcegroupstagging with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resourcegroupstagging", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resourcegroups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resourcegroups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resourceexplorer2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resourceexplorer2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rekognition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rekognition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_redshiftserverless with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redshiftserverless", arg in
             bnd :: bnds
       in
       let bnds =
         match v_redshiftdataapiservice with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redshiftdataapiservice", arg in
             bnd :: bnds
       in
       let bnds =
         match v_redshiftdata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redshiftdata", arg in
             bnd :: bnds
       in
       let bnds =
         match v_redshift with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redshift", arg in
             bnd :: bnds
       in
       let bnds =
         match v_recyclebin with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "recyclebin", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rbin with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rbin", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ram with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ram", arg in
             bnd :: bnds
       in
       let bnds =
         match v_quicksight with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "quicksight", arg in
             bnd :: bnds
       in
       let bnds =
         match v_qldb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "qldb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_qbusiness with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "qbusiness", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prometheusservice with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prometheusservice", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prometheus with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prometheus", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pricing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pricing", arg in
             bnd :: bnds
       in
       let bnds =
         match v_polly with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "polly", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pipes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pipes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pinpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pinpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pcaconnectorad with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pcaconnectorad", arg in
             bnd :: bnds
       in
       let bnds =
         match v_paymentcryptography with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "paymentcryptography", arg in
             bnd :: bnds
       in
       let bnds =
         match v_outposts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "outposts", arg in
             bnd :: bnds
       in
       let bnds =
         match v_osis with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "osis", arg in
             bnd :: bnds
       in
       let bnds =
         match v_organizations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "organizations", arg in
             bnd :: bnds
       in
       let bnds =
         match v_opsworks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "opsworks", arg in
             bnd :: bnds
       in
       let bnds =
         match v_opensearchservice with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "opensearchservice", arg in
             bnd :: bnds
       in
       let bnds =
         match v_opensearchserverless with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "opensearchserverless", arg in
             bnd :: bnds
       in
       let bnds =
         match v_opensearchingestion with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "opensearchingestion", arg in
             bnd :: bnds
       in
       let bnds =
         match v_opensearch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "opensearch", arg in
             bnd :: bnds
       in
       let bnds =
         match v_oam with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "oam", arg in
             bnd :: bnds
       in
       let bnds =
         match v_networkmonitor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "networkmonitor", arg in
             bnd :: bnds
       in
       let bnds =
         match v_networkmanager with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "networkmanager", arg in
             bnd :: bnds
       in
       let bnds =
         match v_networkfirewall with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "networkfirewall", arg in
             bnd :: bnds
       in
       let bnds =
         match v_neptunegraph with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "neptunegraph", arg in
             bnd :: bnds
       in
       let bnds =
         match v_neptune with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "neptune", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mwaa with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mwaa", arg in
             bnd :: bnds
       in
       let bnds =
         match v_msk with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "msk", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mq with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mq", arg in
             bnd :: bnds
       in
       let bnds =
         match v_memorydb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "memorydb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mediastore with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mediastore", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mediapackagev2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mediapackagev2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mediapackage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mediapackage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_medialive with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "medialive", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mediaconvert with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mediaconvert", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mediaconnect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mediaconnect", arg in
             bnd :: bnds
       in
       let bnds =
         match v_managedgrafana with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "managedgrafana", arg in
             bnd :: bnds
       in
       let bnds =
         match v_macie2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "macie2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_m2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "m2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lookoutmetrics with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lookoutmetrics", arg in
             bnd :: bnds
       in
       let bnds =
         match v_logs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_locationservice with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "locationservice", arg in
             bnd :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lightsail with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lightsail", arg in
             bnd :: bnds
       in
       let bnds =
         match v_licensemanager with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "licensemanager", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lexv2models with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lexv2models", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lexmodelsv2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lexmodelsv2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lexmodels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lexmodels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lexmodelbuildingservice with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lexmodelbuildingservice", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lexmodelbuilding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lexmodelbuilding", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_launchwizard with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "launchwizard", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lambda with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lambda", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lakeformation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lakeformation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kinesisvideo with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kinesisvideo", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kinesisanalyticsv2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kinesisanalyticsv2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kinesisanalytics with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kinesisanalytics", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kinesis with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kinesis", arg in
             bnd :: bnds
       in
       let bnds =
         match v_keyspaces with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "keyspaces", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kendra with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kendra", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kafkaconnect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kafkaconnect", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kafka with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kafka", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ivschat with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ivschat", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ivs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ivs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iotevents with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iotevents", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iotanalytics with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iotanalytics", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iot", arg in
             bnd :: bnds
       in
       let bnds =
         match v_internetmonitor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "internetmonitor", arg in
             bnd :: bnds
       in
       let bnds =
         match v_inspectorv2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "inspectorv2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_inspector2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "inspector2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_inspector with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "inspector", arg in
             bnd :: bnds
       in
       let bnds =
         match v_imagebuilder with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "imagebuilder", arg in
             bnd :: bnds
       in
       let bnds =
         match v_identitystore with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identitystore", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iam with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iam", arg in
             bnd :: bnds
       in
       let bnds =
         match v_healthlake with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "healthlake", arg in
             bnd :: bnds
       in
       let bnds =
         match v_guardduty with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "guardduty", arg in
             bnd :: bnds
       in
       let bnds =
         match v_groundstation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "groundstation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_greengrass with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "greengrass", arg in
             bnd :: bnds
       in
       let bnds =
         match v_grafana with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "grafana", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gluedatabrew with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gluedatabrew", arg in
             bnd :: bnds
       in
       let bnds =
         match v_glue with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "glue", arg in
             bnd :: bnds
       in
       let bnds =
         match v_globalaccelerator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "globalaccelerator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_glacier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "glacier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gamelift with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gamelift", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fsx with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fsx", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fis with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fis", arg in
             bnd :: bnds
       in
       let bnds =
         match v_firehose with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "firehose", arg in
             bnd :: bnds
       in
       let bnds =
         match v_finspace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "finspace", arg in
             bnd :: bnds
       in
       let bnds =
         match v_evidently with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "evidently", arg in
             bnd :: bnds
       in
       let bnds =
         match v_events with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "events", arg in
             bnd :: bnds
       in
       let bnds =
         match v_eventbridge with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "eventbridge", arg in
             bnd :: bnds
       in
       let bnds =
         match v_es with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "es", arg in
             bnd :: bnds
       in
       let bnds =
         match v_emrserverless with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "emrserverless", arg in
             bnd :: bnds
       in
       let bnds =
         match v_emrcontainers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "emrcontainers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_emr with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "emr", arg in
             bnd :: bnds
       in
       let bnds =
         match v_elbv2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "elbv2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_elb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "elb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_elastictranscoder with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "elastictranscoder", arg in
             bnd :: bnds
       in
       let bnds =
         match v_elasticsearchservice with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "elasticsearchservice", arg in
             bnd :: bnds
       in
       let bnds =
         match v_elasticsearch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "elasticsearch", arg in
             bnd :: bnds
       in
       let bnds =
         match v_elasticloadbalancingv2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "elasticloadbalancingv2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_elasticloadbalancing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "elasticloadbalancing", arg in
             bnd :: bnds
       in
       let bnds =
         match v_elasticbeanstalk with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "elasticbeanstalk", arg in
             bnd :: bnds
       in
       let bnds =
         match v_elasticache with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "elasticache", arg in
             bnd :: bnds
       in
       let bnds =
         match v_eks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "eks", arg in
             bnd :: bnds
       in
       let bnds =
         match v_efs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "efs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ecs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ecs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ecrpublic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ecrpublic", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ecr with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ecr", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ec2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ec2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dynamodb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dynamodb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_drs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "drs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_docdbelastic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "docdbelastic", arg in
             bnd :: bnds
       in
       let bnds =
         match v_docdb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "docdb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dlm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dlm", arg in
             bnd :: bnds
       in
       let bnds =
         match v_directoryservice with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "directoryservice", arg in
             bnd :: bnds
       in
       let bnds =
         match v_directconnect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "directconnect", arg in
             bnd :: bnds
       in
       let bnds =
         match v_devopsguru with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "devopsguru", arg in
             bnd :: bnds
       in
       let bnds =
         match v_devicefarm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "devicefarm", arg in
             bnd :: bnds
       in
       let bnds =
         match v_detective with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "detective", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deploy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deploy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dax with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dax", arg in
             bnd :: bnds
       in
       let bnds =
         match v_datazone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "datazone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_datasync with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "datasync", arg in
             bnd :: bnds
       in
       let bnds =
         match v_datapipeline with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "datapipeline", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dataexchange with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dataexchange", arg in
             bnd :: bnds
       in
       let bnds =
         match v_databrew with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "databrew", arg in
             bnd :: bnds
       in
       let bnds =
         match v_databasemigrationservice with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "databasemigrationservice", arg in
             bnd :: bnds
       in
       let bnds =
         match v_databasemigration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "databasemigration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_customerprofiles with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "customerprofiles", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cur with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cur", arg in
             bnd :: bnds
       in
       let bnds =
         match v_costoptimizationhub with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "costoptimizationhub", arg in
             bnd :: bnds
       in
       let bnds =
         match v_costexplorer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "costexplorer", arg in
             bnd :: bnds
       in
       let bnds =
         match v_costandusagereportservice with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "costandusagereportservice", arg in
             bnd :: bnds
       in
       let bnds =
         match v_controltower with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "controltower", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connectcases with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connectcases", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connect", arg in
             bnd :: bnds
       in
       let bnds =
         match v_configservice with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "configservice", arg in
             bnd :: bnds
       in
       let bnds =
         match v_config with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "config", arg in
             bnd :: bnds
       in
       let bnds =
         match v_computeoptimizer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "computeoptimizer", arg in
             bnd :: bnds
       in
       let bnds =
         match v_comprehend with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comprehend", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cognitoidp with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cognitoidp", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cognitoidentityprovider with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cognitoidentityprovider", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cognitoidentity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cognitoidentity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_codestarnotifications with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "codestarnotifications", arg in
             bnd :: bnds
       in
       let bnds =
         match v_codestarconnections with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "codestarconnections", arg in
             bnd :: bnds
       in
       let bnds =
         match v_codepipeline with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "codepipeline", arg in
             bnd :: bnds
       in
       let bnds =
         match v_codegurureviewer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "codegurureviewer", arg in
             bnd :: bnds
       in
       let bnds =
         match v_codeguruprofiler with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "codeguruprofiler", arg in
             bnd :: bnds
       in
       let bnds =
         match v_codedeploy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "codedeploy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_codecommit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "codecommit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_codecatalyst with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "codecatalyst", arg in
             bnd :: bnds
       in
       let bnds =
         match v_codebuild with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "codebuild", arg in
             bnd :: bnds
       in
       let bnds =
         match v_codeartifact with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "codeartifact", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloudwatchrum with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloudwatchrum", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloudwatchobservabilityaccessmanager with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloudwatchobservabilityaccessmanager", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloudwatchlogs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloudwatchlogs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloudwatchlog with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloudwatchlog", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloudwatchevidently with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloudwatchevidently", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloudwatchevents with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloudwatchevents", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloudwatch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloudwatch", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloudtrail with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloudtrail", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloudsearch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloudsearch", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloudhsmv2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloudhsmv2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloudhsm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloudhsm", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloudfrontkeyvaluestore with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloudfrontkeyvaluestore", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloudfront with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloudfront", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloudformation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloudformation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloudcontrolapi with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloudcontrolapi", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloudcontrol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloudcontrol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloud9 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloud9", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cleanrooms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cleanrooms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_chimesdkvoice with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "chimesdkvoice", arg in
             bnd :: bnds
       in
       let bnds =
         match v_chimesdkmediapipelines with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "chimesdkmediapipelines", arg in
             bnd :: bnds
       in
       let bnds =
         match v_chime with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "chime", arg in
             bnd :: bnds
       in
       let bnds =
         match v_chatbot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "chatbot", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ce with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ce", arg in
             bnd :: bnds
       in
       let bnds =
         match v_budgets with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "budgets", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bedrockagent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bedrockagent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bedrock with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bedrock", arg in
             bnd :: bnds
       in
       let bnds =
         match v_beanstalk with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "beanstalk", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bcmdataexports with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bcmdataexports", arg in
             bnd :: bnds
       in
       let bnds =
         match v_batch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "batch", arg in
             bnd :: bnds
       in
       let bnds =
         match v_backup with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "backup", arg in
             bnd :: bnds
       in
       let bnds =
         match v_autoscalingplans with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "autoscalingplans", arg in
             bnd :: bnds
       in
       let bnds =
         match v_autoscaling with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "autoscaling", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auditmanager with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auditmanager", arg in
             bnd :: bnds
       in
       let bnds =
         match v_athena with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "athena", arg in
             bnd :: bnds
       in
       let bnds =
         match v_appsync with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "appsync", arg in
             bnd :: bnds
       in
       let bnds =
         match v_appstream with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "appstream", arg in
             bnd :: bnds
       in
       let bnds =
         match v_apprunner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "apprunner", arg in
             bnd :: bnds
       in
       let bnds =
         match v_appregistry with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "appregistry", arg in
             bnd :: bnds
       in
       let bnds =
         match v_appmesh with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "appmesh", arg in
             bnd :: bnds
       in
       let bnds =
         match v_applicationsignals with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "applicationsignals", arg in
             bnd :: bnds
       in
       let bnds =
         match v_applicationinsights with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "applicationinsights", arg in
             bnd :: bnds
       in
       let bnds =
         match v_applicationautoscaling with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "applicationautoscaling", arg in
             bnd :: bnds
       in
       let bnds =
         match v_appintegrationsservice with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "appintegrationsservice", arg in
             bnd :: bnds
       in
       let bnds =
         match v_appintegrations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "appintegrations", arg in
             bnd :: bnds
       in
       let bnds =
         match v_appflow with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "appflow", arg in
             bnd :: bnds
       in
       let bnds =
         match v_appfabric with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "appfabric", arg in
             bnd :: bnds
       in
       let bnds =
         match v_appconfig with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "appconfig", arg in
             bnd :: bnds
       in
       let bnds =
         match v_appautoscaling with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "appautoscaling", arg in
             bnd :: bnds
       in
       let bnds =
         match v_apigatewayv2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "apigatewayv2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_apigateway with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "apigateway", arg in
             bnd :: bnds
       in
       let bnds =
         match v_amplify with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "amplify", arg in
             bnd :: bnds
       in
       let bnds =
         match v_amp with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "amp", arg in
             bnd :: bnds
       in
       let bnds =
         match v_amg with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "amg", arg in
             bnd :: bnds
       in
       let bnds =
         match v_acmpca with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "acmpca", arg in
             bnd :: bnds
       in
       let bnds =
         match v_acm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "acm", arg in
             bnd :: bnds
       in
       let bnds =
         match v_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account", arg in
             bnd :: bnds
       in
       let bnds =
         match v_accessanalyzer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "accessanalyzer", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : endpoints -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoints

[@@@deriving.end]

type ignore_tags = {
  key_prefixes : string prop list option; [@option]
  keys : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ignore_tags) -> ()

let yojson_of_ignore_tags =
  (function
   | { key_prefixes = v_key_prefixes; keys = v_keys } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_keys with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "keys", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_prefixes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "key_prefixes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ignore_tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ignore_tags

[@@@deriving.end]

type aws = {
  access_key : string prop option; [@option]
  allowed_account_ids : string prop list option; [@option]
  custom_ca_bundle : string prop option; [@option]
  ec2_metadata_service_endpoint : string prop option; [@option]
  ec2_metadata_service_endpoint_mode : string prop option; [@option]
  forbidden_account_ids : string prop list option; [@option]
  http_proxy : string prop option; [@option]
  https_proxy : string prop option; [@option]
  insecure : bool prop option; [@option]
  max_retries : float prop option; [@option]
  no_proxy : string prop option; [@option]
  profile : string prop option; [@option]
  region : string prop option; [@option]
  retry_mode : string prop option; [@option]
  s3_us_east_1_regional_endpoint : string prop option; [@option]
  s3_use_path_style : bool prop option; [@option]
  secret_key : string prop option; [@option]
  shared_config_files : string prop list option; [@option]
  shared_credentials_files : string prop list option; [@option]
  skip_credentials_validation : bool prop option; [@option]
  skip_metadata_api_check : string prop option; [@option]
  skip_region_validation : bool prop option; [@option]
  skip_requesting_account_id : bool prop option; [@option]
  sts_region : string prop option; [@option]
  token : string prop option; [@option]
  token_bucket_rate_limiter_capacity : float prop option; [@option]
  use_dualstack_endpoint : bool prop option; [@option]
  use_fips_endpoint : bool prop option; [@option]
  assume_role : assume_role list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  assume_role_with_web_identity : assume_role_with_web_identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  default_tags : default_tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  endpoints : endpoints list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ignore_tags : ignore_tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws) -> ()

let yojson_of_aws =
  (function
   | {
       access_key = v_access_key;
       allowed_account_ids = v_allowed_account_ids;
       custom_ca_bundle = v_custom_ca_bundle;
       ec2_metadata_service_endpoint =
         v_ec2_metadata_service_endpoint;
       ec2_metadata_service_endpoint_mode =
         v_ec2_metadata_service_endpoint_mode;
       forbidden_account_ids = v_forbidden_account_ids;
       http_proxy = v_http_proxy;
       https_proxy = v_https_proxy;
       insecure = v_insecure;
       max_retries = v_max_retries;
       no_proxy = v_no_proxy;
       profile = v_profile;
       region = v_region;
       retry_mode = v_retry_mode;
       s3_us_east_1_regional_endpoint =
         v_s3_us_east_1_regional_endpoint;
       s3_use_path_style = v_s3_use_path_style;
       secret_key = v_secret_key;
       shared_config_files = v_shared_config_files;
       shared_credentials_files = v_shared_credentials_files;
       skip_credentials_validation = v_skip_credentials_validation;
       skip_metadata_api_check = v_skip_metadata_api_check;
       skip_region_validation = v_skip_region_validation;
       skip_requesting_account_id = v_skip_requesting_account_id;
       sts_region = v_sts_region;
       token = v_token;
       token_bucket_rate_limiter_capacity =
         v_token_bucket_rate_limiter_capacity;
       use_dualstack_endpoint = v_use_dualstack_endpoint;
       use_fips_endpoint = v_use_fips_endpoint;
       assume_role = v_assume_role;
       assume_role_with_web_identity =
         v_assume_role_with_web_identity;
       default_tags = v_default_tags;
       endpoints = v_endpoints;
       ignore_tags = v_ignore_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ignore_tags then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ignore_tags) v_ignore_tags
           in
           let bnd = "ignore_tags", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_endpoints then bnds
         else
           let arg =
             (yojson_of_list yojson_of_endpoints) v_endpoints
           in
           let bnd = "endpoints", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_default_tags then bnds
         else
           let arg =
             (yojson_of_list yojson_of_default_tags) v_default_tags
           in
           let bnd = "default_tags", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_assume_role_with_web_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_assume_role_with_web_identity)
               v_assume_role_with_web_identity
           in
           let bnd = "assume_role_with_web_identity", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_assume_role then bnds
         else
           let arg =
             (yojson_of_list yojson_of_assume_role) v_assume_role
           in
           let bnd = "assume_role", arg in
           bnd :: bnds
       in
       let bnds =
         match v_use_fips_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_fips_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_use_dualstack_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_dualstack_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_token_bucket_rate_limiter_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "token_bucket_rate_limiter_capacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sts_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sts_region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_skip_requesting_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_requesting_account_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_skip_region_validation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_region_validation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_skip_metadata_api_check with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "skip_metadata_api_check", arg in
             bnd :: bnds
       in
       let bnds =
         match v_skip_credentials_validation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_credentials_validation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_shared_credentials_files with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "shared_credentials_files", arg in
             bnd :: bnds
       in
       let bnds =
         match v_shared_config_files with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "shared_config_files", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secret_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3_use_path_style with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "s3_use_path_style", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3_us_east_1_regional_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_us_east_1_regional_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retry_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "retry_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_profile with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "profile", arg in
             bnd :: bnds
       in
       let bnds =
         match v_no_proxy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "no_proxy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_retries with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_retries", arg in
             bnd :: bnds
       in
       let bnds =
         match v_insecure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "insecure", arg in
             bnd :: bnds
       in
       let bnds =
         match v_https_proxy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "https_proxy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_proxy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_proxy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_forbidden_account_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "forbidden_account_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ec2_metadata_service_endpoint_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ec2_metadata_service_endpoint_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ec2_metadata_service_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ec2_metadata_service_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_ca_bundle with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_ca_bundle", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_account_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_account_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws

[@@@deriving.end]

let assume_role ?duration ?external_id ?policy ?policy_arns ?role_arn
    ?session_name ?source_identity ?tags ?transitive_tag_keys () :
    assume_role =
  {
    duration;
    external_id;
    policy;
    policy_arns;
    role_arn;
    session_name;
    source_identity;
    tags;
    transitive_tag_keys;
  }

let assume_role_with_web_identity ?duration ?policy ?policy_arns
    ?role_arn ?session_name ?web_identity_token
    ?web_identity_token_file () : assume_role_with_web_identity =
  {
    duration;
    policy;
    policy_arns;
    role_arn;
    session_name;
    web_identity_token;
    web_identity_token_file;
  }

let default_tags ?tags () : default_tags = { tags }

let endpoints ?accessanalyzer ?account ?acm ?acmpca ?amg ?amp
    ?amplify ?apigateway ?apigatewayv2 ?appautoscaling ?appconfig
    ?appfabric ?appflow ?appintegrations ?appintegrationsservice
    ?applicationautoscaling ?applicationinsights ?applicationsignals
    ?appmesh ?appregistry ?apprunner ?appstream ?appsync ?athena
    ?auditmanager ?autoscaling ?autoscalingplans ?backup ?batch
    ?bcmdataexports ?beanstalk ?bedrock ?bedrockagent ?budgets ?ce
    ?chatbot ?chime ?chimesdkmediapipelines ?chimesdkvoice
    ?cleanrooms ?cloud9 ?cloudcontrol ?cloudcontrolapi
    ?cloudformation ?cloudfront ?cloudfrontkeyvaluestore ?cloudhsm
    ?cloudhsmv2 ?cloudsearch ?cloudtrail ?cloudwatch
    ?cloudwatchevents ?cloudwatchevidently ?cloudwatchlog
    ?cloudwatchlogs ?cloudwatchobservabilityaccessmanager
    ?cloudwatchrum ?codeartifact ?codebuild ?codecatalyst ?codecommit
    ?codedeploy ?codeguruprofiler ?codegurureviewer ?codepipeline
    ?codestarconnections ?codestarnotifications ?cognitoidentity
    ?cognitoidentityprovider ?cognitoidp ?comprehend
    ?computeoptimizer ?config ?configservice ?connect ?connectcases
    ?controltower ?costandusagereportservice ?costexplorer
    ?costoptimizationhub ?cur ?customerprofiles ?databasemigration
    ?databasemigrationservice ?databrew ?dataexchange ?datapipeline
    ?datasync ?datazone ?dax ?deploy ?detective ?devicefarm
    ?devopsguru ?directconnect ?directoryservice ?dlm ?dms ?docdb
    ?docdbelastic ?drs ?ds ?dynamodb ?ec2 ?ecr ?ecrpublic ?ecs ?efs
    ?eks ?elasticache ?elasticbeanstalk ?elasticloadbalancing
    ?elasticloadbalancingv2 ?elasticsearch ?elasticsearchservice
    ?elastictranscoder ?elb ?elbv2 ?emr ?emrcontainers ?emrserverless
    ?es ?eventbridge ?events ?evidently ?finspace ?firehose ?fis ?fms
    ?fsx ?gamelift ?glacier ?globalaccelerator ?glue ?gluedatabrew
    ?grafana ?greengrass ?groundstation ?guardduty ?healthlake ?iam
    ?identitystore ?imagebuilder ?inspector ?inspector2 ?inspectorv2
    ?internetmonitor ?iot ?iotanalytics ?iotevents ?ivs ?ivschat
    ?kafka ?kafkaconnect ?kendra ?keyspaces ?kinesis
    ?kinesisanalytics ?kinesisanalyticsv2 ?kinesisvideo ?kms
    ?lakeformation ?lambda ?launchwizard ?lex ?lexmodelbuilding
    ?lexmodelbuildingservice ?lexmodels ?lexmodelsv2 ?lexv2models
    ?licensemanager ?lightsail ?location ?locationservice ?logs
    ?lookoutmetrics ?m2 ?macie2 ?managedgrafana ?mediaconnect
    ?mediaconvert ?medialive ?mediapackage ?mediapackagev2
    ?mediastore ?memorydb ?mq ?msk ?mwaa ?neptune ?neptunegraph
    ?networkfirewall ?networkmanager ?networkmonitor ?oam ?opensearch
    ?opensearchingestion ?opensearchserverless ?opensearchservice
    ?opsworks ?organizations ?osis ?outposts ?paymentcryptography
    ?pcaconnectorad ?pinpoint ?pipes ?polly ?pricing ?prometheus
    ?prometheusservice ?qbusiness ?qldb ?quicksight ?ram ?rbin ?rds
    ?recyclebin ?redshift ?redshiftdata ?redshiftdataapiservice
    ?redshiftserverless ?rekognition ?resourceexplorer2
    ?resourcegroups ?resourcegroupstagging ?resourcegroupstaggingapi
    ?rolesanywhere ?route53 ?route53domains ?route53profiles
    ?route53recoverycontrolconfig ?route53recoveryreadiness
    ?route53resolver ?rum ?s3 ?s3api ?s3control ?s3outposts
    ?sagemaker ?scheduler ?schemas ?sdb ?secretsmanager ?securityhub
    ?securitylake ?serverlessapplicationrepository ?serverlessapprepo
    ?serverlessrepo ?servicecatalog ?servicecatalogappregistry
    ?servicediscovery ?servicequotas ?ses ?sesv2 ?sfn ?shield ?signer
    ?simpledb ?sns ?sqs ?ssm ?ssmcontacts ?ssmincidents ?ssmsap ?sso
    ?ssoadmin ?stepfunctions ?storagegateway ?sts ?swf ?synthetics
    ?timestreaminfluxdb ?timestreamwrite ?transcribe
    ?transcribeservice ?transfer ?verifiedpermissions ?vpclattice
    ?waf ?wafregional ?wafv2 ?wellarchitected ?worklink ?workspaces
    ?workspacesweb ?xray () : endpoints =
  {
    accessanalyzer;
    account;
    acm;
    acmpca;
    amg;
    amp;
    amplify;
    apigateway;
    apigatewayv2;
    appautoscaling;
    appconfig;
    appfabric;
    appflow;
    appintegrations;
    appintegrationsservice;
    applicationautoscaling;
    applicationinsights;
    applicationsignals;
    appmesh;
    appregistry;
    apprunner;
    appstream;
    appsync;
    athena;
    auditmanager;
    autoscaling;
    autoscalingplans;
    backup;
    batch;
    bcmdataexports;
    beanstalk;
    bedrock;
    bedrockagent;
    budgets;
    ce;
    chatbot;
    chime;
    chimesdkmediapipelines;
    chimesdkvoice;
    cleanrooms;
    cloud9;
    cloudcontrol;
    cloudcontrolapi;
    cloudformation;
    cloudfront;
    cloudfrontkeyvaluestore;
    cloudhsm;
    cloudhsmv2;
    cloudsearch;
    cloudtrail;
    cloudwatch;
    cloudwatchevents;
    cloudwatchevidently;
    cloudwatchlog;
    cloudwatchlogs;
    cloudwatchobservabilityaccessmanager;
    cloudwatchrum;
    codeartifact;
    codebuild;
    codecatalyst;
    codecommit;
    codedeploy;
    codeguruprofiler;
    codegurureviewer;
    codepipeline;
    codestarconnections;
    codestarnotifications;
    cognitoidentity;
    cognitoidentityprovider;
    cognitoidp;
    comprehend;
    computeoptimizer;
    config;
    configservice;
    connect;
    connectcases;
    controltower;
    costandusagereportservice;
    costexplorer;
    costoptimizationhub;
    cur;
    customerprofiles;
    databasemigration;
    databasemigrationservice;
    databrew;
    dataexchange;
    datapipeline;
    datasync;
    datazone;
    dax;
    deploy;
    detective;
    devicefarm;
    devopsguru;
    directconnect;
    directoryservice;
    dlm;
    dms;
    docdb;
    docdbelastic;
    drs;
    ds;
    dynamodb;
    ec2;
    ecr;
    ecrpublic;
    ecs;
    efs;
    eks;
    elasticache;
    elasticbeanstalk;
    elasticloadbalancing;
    elasticloadbalancingv2;
    elasticsearch;
    elasticsearchservice;
    elastictranscoder;
    elb;
    elbv2;
    emr;
    emrcontainers;
    emrserverless;
    es;
    eventbridge;
    events;
    evidently;
    finspace;
    firehose;
    fis;
    fms;
    fsx;
    gamelift;
    glacier;
    globalaccelerator;
    glue;
    gluedatabrew;
    grafana;
    greengrass;
    groundstation;
    guardduty;
    healthlake;
    iam;
    identitystore;
    imagebuilder;
    inspector;
    inspector2;
    inspectorv2;
    internetmonitor;
    iot;
    iotanalytics;
    iotevents;
    ivs;
    ivschat;
    kafka;
    kafkaconnect;
    kendra;
    keyspaces;
    kinesis;
    kinesisanalytics;
    kinesisanalyticsv2;
    kinesisvideo;
    kms;
    lakeformation;
    lambda;
    launchwizard;
    lex;
    lexmodelbuilding;
    lexmodelbuildingservice;
    lexmodels;
    lexmodelsv2;
    lexv2models;
    licensemanager;
    lightsail;
    location;
    locationservice;
    logs;
    lookoutmetrics;
    m2;
    macie2;
    managedgrafana;
    mediaconnect;
    mediaconvert;
    medialive;
    mediapackage;
    mediapackagev2;
    mediastore;
    memorydb;
    mq;
    msk;
    mwaa;
    neptune;
    neptunegraph;
    networkfirewall;
    networkmanager;
    networkmonitor;
    oam;
    opensearch;
    opensearchingestion;
    opensearchserverless;
    opensearchservice;
    opsworks;
    organizations;
    osis;
    outposts;
    paymentcryptography;
    pcaconnectorad;
    pinpoint;
    pipes;
    polly;
    pricing;
    prometheus;
    prometheusservice;
    qbusiness;
    qldb;
    quicksight;
    ram;
    rbin;
    rds;
    recyclebin;
    redshift;
    redshiftdata;
    redshiftdataapiservice;
    redshiftserverless;
    rekognition;
    resourceexplorer2;
    resourcegroups;
    resourcegroupstagging;
    resourcegroupstaggingapi;
    rolesanywhere;
    route53;
    route53domains;
    route53profiles;
    route53recoverycontrolconfig;
    route53recoveryreadiness;
    route53resolver;
    rum;
    s3;
    s3api;
    s3control;
    s3outposts;
    sagemaker;
    scheduler;
    schemas;
    sdb;
    secretsmanager;
    securityhub;
    securitylake;
    serverlessapplicationrepository;
    serverlessapprepo;
    serverlessrepo;
    servicecatalog;
    servicecatalogappregistry;
    servicediscovery;
    servicequotas;
    ses;
    sesv2;
    sfn;
    shield;
    signer;
    simpledb;
    sns;
    sqs;
    ssm;
    ssmcontacts;
    ssmincidents;
    ssmsap;
    sso;
    ssoadmin;
    stepfunctions;
    storagegateway;
    sts;
    swf;
    synthetics;
    timestreaminfluxdb;
    timestreamwrite;
    transcribe;
    transcribeservice;
    transfer;
    verifiedpermissions;
    vpclattice;
    waf;
    wafregional;
    wafv2;
    wellarchitected;
    worklink;
    workspaces;
    workspacesweb;
    xray;
  }

let ignore_tags ?key_prefixes ?keys () : ignore_tags =
  { key_prefixes; keys }

let aws ?access_key ?allowed_account_ids ?custom_ca_bundle
    ?ec2_metadata_service_endpoint
    ?ec2_metadata_service_endpoint_mode ?forbidden_account_ids
    ?http_proxy ?https_proxy ?insecure ?max_retries ?no_proxy
    ?profile ?region ?retry_mode ?s3_us_east_1_regional_endpoint
    ?s3_use_path_style ?secret_key ?shared_config_files
    ?shared_credentials_files ?skip_credentials_validation
    ?skip_metadata_api_check ?skip_region_validation
    ?skip_requesting_account_id ?sts_region ?token
    ?token_bucket_rate_limiter_capacity ?use_dualstack_endpoint
    ?use_fips_endpoint ?(assume_role = [])
    ?(assume_role_with_web_identity = []) ?(default_tags = [])
    ?(ignore_tags = []) ~endpoints () : aws =
  {
    access_key;
    allowed_account_ids;
    custom_ca_bundle;
    ec2_metadata_service_endpoint;
    ec2_metadata_service_endpoint_mode;
    forbidden_account_ids;
    http_proxy;
    https_proxy;
    insecure;
    max_retries;
    no_proxy;
    profile;
    region;
    retry_mode;
    s3_us_east_1_regional_endpoint;
    s3_use_path_style;
    secret_key;
    shared_config_files;
    shared_credentials_files;
    skip_credentials_validation;
    skip_metadata_api_check;
    skip_region_validation;
    skip_requesting_account_id;
    sts_region;
    token;
    token_bucket_rate_limiter_capacity;
    use_dualstack_endpoint;
    use_fips_endpoint;
    assume_role;
    assume_role_with_web_identity;
    default_tags;
    endpoints;
    ignore_tags;
  }

let make ?access_key ?allowed_account_ids ?custom_ca_bundle
    ?ec2_metadata_service_endpoint
    ?ec2_metadata_service_endpoint_mode ?forbidden_account_ids
    ?http_proxy ?https_proxy ?insecure ?max_retries ?no_proxy
    ?profile ?region ?retry_mode ?s3_us_east_1_regional_endpoint
    ?s3_use_path_style ?secret_key ?shared_config_files
    ?shared_credentials_files ?skip_credentials_validation
    ?skip_metadata_api_check ?skip_region_validation
    ?skip_requesting_account_id ?sts_region ?token
    ?token_bucket_rate_limiter_capacity ?use_dualstack_endpoint
    ?use_fips_endpoint ?(assume_role = [])
    ?(assume_role_with_web_identity = []) ?(default_tags = [])
    ?(ignore_tags = []) ~endpoints () =
  {
    Tf_core.id = "aws";
    json =
      yojson_of_aws
        (aws ?access_key ?allowed_account_ids ?custom_ca_bundle
           ?ec2_metadata_service_endpoint
           ?ec2_metadata_service_endpoint_mode ?forbidden_account_ids
           ?http_proxy ?https_proxy ?insecure ?max_retries ?no_proxy
           ?profile ?region ?retry_mode
           ?s3_us_east_1_regional_endpoint ?s3_use_path_style
           ?secret_key ?shared_config_files ?shared_credentials_files
           ?skip_credentials_validation ?skip_metadata_api_check
           ?skip_region_validation ?skip_requesting_account_id
           ?sts_region ?token ?token_bucket_rate_limiter_capacity
           ?use_dualstack_endpoint ?use_fips_endpoint ~assume_role
           ~assume_role_with_web_identity ~default_tags ~ignore_tags
           ~endpoints ());
  }

let register ?tf_module ?access_key ?allowed_account_ids
    ?custom_ca_bundle ?ec2_metadata_service_endpoint
    ?ec2_metadata_service_endpoint_mode ?forbidden_account_ids
    ?http_proxy ?https_proxy ?insecure ?max_retries ?no_proxy
    ?profile ?region ?retry_mode ?s3_us_east_1_regional_endpoint
    ?s3_use_path_style ?secret_key ?shared_config_files
    ?shared_credentials_files ?skip_credentials_validation
    ?skip_metadata_api_check ?skip_region_validation
    ?skip_requesting_account_id ?sts_region ?token
    ?token_bucket_rate_limiter_capacity ?use_dualstack_endpoint
    ?use_fips_endpoint ?(assume_role = [])
    ?(assume_role_with_web_identity = []) ?(default_tags = [])
    ?(ignore_tags = []) ~endpoints ~version () =
  let (p : Tf_core.provider) =
    make ?access_key ?allowed_account_ids ?custom_ca_bundle
      ?ec2_metadata_service_endpoint
      ?ec2_metadata_service_endpoint_mode ?forbidden_account_ids
      ?http_proxy ?https_proxy ?insecure ?max_retries ?no_proxy
      ?profile ?region ?retry_mode ?s3_us_east_1_regional_endpoint
      ?s3_use_path_style ?secret_key ?shared_config_files
      ?shared_credentials_files ?skip_credentials_validation
      ?skip_metadata_api_check ?skip_region_validation
      ?skip_requesting_account_id ?sts_region ?token
      ?token_bucket_rate_limiter_capacity ?use_dualstack_endpoint
      ?use_fips_endpoint ~assume_role ~assume_role_with_web_identity
      ~default_tags ~ignore_tags ~endpoints ()
  in
  Provider.add ?tf_module ~id:p.id p.json;
  Required_providers.add ?tf_module ~id:p.id
    (`Assoc
      [
        "source", `String "registry.terraform.io/hashicorp/aws";
        "version", `String version;
      ]);
  ()
