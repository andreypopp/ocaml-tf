(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type output_data_config = { s3_uri : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : output_data_config) -> ()

let yojson_of_output_data_config =
  (function
   | { s3_uri = v_s3_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_uri in
         ("s3_uri", arg) :: bnds
       in
       `Assoc bnds
    : output_data_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output_data_config

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type training_data_config = { s3_uri : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : training_data_config) -> ()

let yojson_of_training_data_config =
  (function
   | { s3_uri = v_s3_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_uri in
         ("s3_uri", arg) :: bnds
       in
       `Assoc bnds
    : training_data_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_training_data_config

[@@@deriving.end]

type validation_data_config__validator = { s3_uri : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : validation_data_config__validator) -> ()

let yojson_of_validation_data_config__validator =
  (function
   | { s3_uri = v_s3_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_uri in
         ("s3_uri", arg) :: bnds
       in
       `Assoc bnds
    : validation_data_config__validator ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_validation_data_config__validator

[@@@deriving.end]

type validation_data_config = {
  validator : validation_data_config__validator list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : validation_data_config) -> ()

let yojson_of_validation_data_config =
  (function
   | { validator = v_validator } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_validation_data_config__validator
             v_validator
         in
         ("validator", arg) :: bnds
       in
       `Assoc bnds
    : validation_data_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_validation_data_config

[@@@deriving.end]

type vpc_config = {
  security_group_ids : string prop list;
  subnet_ids : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_config) -> ()

let yojson_of_vpc_config =
  (function
   | {
       security_group_ids = v_security_group_ids;
       subnet_ids = v_subnet_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_subnet_ids
         in
         ("subnet_ids", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_security_group_ids
         in
         ("security_group_ids", arg) :: bnds
       in
       `Assoc bnds
    : vpc_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_config

[@@@deriving.end]

type training_metrics = { training_loss : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : training_metrics) -> ()

let yojson_of_training_metrics =
  (function
   | { training_loss = v_training_loss } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_training_loss in
         ("training_loss", arg) :: bnds
       in
       `Assoc bnds
    : training_metrics -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_training_metrics

[@@@deriving.end]

type validation_metrics = { validation_loss : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : validation_metrics) -> ()

let yojson_of_validation_metrics =
  (function
   | { validation_loss = v_validation_loss } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_validation_loss
         in
         ("validation_loss", arg) :: bnds
       in
       `Assoc bnds
    : validation_metrics -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_validation_metrics

[@@@deriving.end]

type aws_bedrock_custom_model = {
  base_model_identifier : string prop;
  custom_model_kms_key_id : string prop option; [@option]
  custom_model_name : string prop;
  customization_type : string prop option; [@option]
  hyperparameters : (string * string prop) list;
  job_name : string prop;
  role_arn : string prop;
  tags : (string * string prop) list option; [@option]
  output_data_config : output_data_config list;
  timeouts : timeouts option;
  training_data_config : training_data_config list;
  validation_data_config : validation_data_config list;
  vpc_config : vpc_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_bedrock_custom_model) -> ()

let yojson_of_aws_bedrock_custom_model =
  (function
   | {
       base_model_identifier = v_base_model_identifier;
       custom_model_kms_key_id = v_custom_model_kms_key_id;
       custom_model_name = v_custom_model_name;
       customization_type = v_customization_type;
       hyperparameters = v_hyperparameters;
       job_name = v_job_name;
       role_arn = v_role_arn;
       tags = v_tags;
       output_data_config = v_output_data_config;
       timeouts = v_timeouts;
       training_data_config = v_training_data_config;
       validation_data_config = v_validation_data_config;
       vpc_config = v_vpc_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_vpc_config v_vpc_config
         in
         ("vpc_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_validation_data_config
             v_validation_data_config
         in
         ("validation_data_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_training_data_config
             v_training_data_config
         in
         ("training_data_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_output_data_config
             v_output_data_config
         in
         ("output_data_config", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_job_name in
         ("job_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_hyperparameters
         in
         ("hyperparameters", arg) :: bnds
       in
       let bnds =
         match v_customization_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "customization_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_custom_model_name
         in
         ("custom_model_name", arg) :: bnds
       in
       let bnds =
         match v_custom_model_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_model_kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_base_model_identifier
         in
         ("base_model_identifier", arg) :: bnds
       in
       `Assoc bnds
    : aws_bedrock_custom_model -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_bedrock_custom_model

[@@@deriving.end]

let output_data_config ~s3_uri () : output_data_config = { s3_uri }
let timeouts ?create ?delete () : timeouts = { create; delete }

let training_data_config ~s3_uri () : training_data_config =
  { s3_uri }

let validation_data_config__validator ~s3_uri () :
    validation_data_config__validator =
  { s3_uri }

let validation_data_config ?(validator = []) () :
    validation_data_config =
  { validator }

let vpc_config ~security_group_ids ~subnet_ids () : vpc_config =
  { security_group_ids; subnet_ids }

let aws_bedrock_custom_model ?custom_model_kms_key_id
    ?customization_type ?tags ?(output_data_config = []) ?timeouts
    ?(training_data_config = []) ?(validation_data_config = [])
    ?(vpc_config = []) ~base_model_identifier ~custom_model_name
    ~hyperparameters ~job_name ~role_arn () :
    aws_bedrock_custom_model =
  {
    base_model_identifier;
    custom_model_kms_key_id;
    custom_model_name;
    customization_type;
    hyperparameters;
    job_name;
    role_arn;
    tags;
    output_data_config;
    timeouts;
    training_data_config;
    validation_data_config;
    vpc_config;
  }

type t = {
  base_model_identifier : string prop;
  custom_model_arn : string prop;
  custom_model_kms_key_id : string prop;
  custom_model_name : string prop;
  customization_type : string prop;
  hyperparameters : (string * string) list prop;
  id : string prop;
  job_arn : string prop;
  job_name : string prop;
  job_status : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  training_metrics : training_metrics list prop;
  validation_metrics : validation_metrics list prop;
}

let make ?custom_model_kms_key_id ?customization_type ?tags
    ?(output_data_config = []) ?timeouts ?(training_data_config = [])
    ?(validation_data_config = []) ?(vpc_config = [])
    ~base_model_identifier ~custom_model_name ~hyperparameters
    ~job_name ~role_arn __id =
  let __type = "aws_bedrock_custom_model" in
  let __attrs =
    ({
       base_model_identifier =
         Prop.computed __type __id "base_model_identifier";
       custom_model_arn =
         Prop.computed __type __id "custom_model_arn";
       custom_model_kms_key_id =
         Prop.computed __type __id "custom_model_kms_key_id";
       custom_model_name =
         Prop.computed __type __id "custom_model_name";
       customization_type =
         Prop.computed __type __id "customization_type";
       hyperparameters = Prop.computed __type __id "hyperparameters";
       id = Prop.computed __type __id "id";
       job_arn = Prop.computed __type __id "job_arn";
       job_name = Prop.computed __type __id "job_name";
       job_status = Prop.computed __type __id "job_status";
       role_arn = Prop.computed __type __id "role_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       training_metrics =
         Prop.computed __type __id "training_metrics";
       validation_metrics =
         Prop.computed __type __id "validation_metrics";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_bedrock_custom_model
        (aws_bedrock_custom_model ?custom_model_kms_key_id
           ?customization_type ?tags ~output_data_config ?timeouts
           ~training_data_config ~validation_data_config ~vpc_config
           ~base_model_identifier ~custom_model_name ~hyperparameters
           ~job_name ~role_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?custom_model_kms_key_id ?customization_type
    ?tags ?(output_data_config = []) ?timeouts
    ?(training_data_config = []) ?(validation_data_config = [])
    ?(vpc_config = []) ~base_model_identifier ~custom_model_name
    ~hyperparameters ~job_name ~role_arn __id =
  let (r : _ Tf_core.resource) =
    make ?custom_model_kms_key_id ?customization_type ?tags
      ~output_data_config ?timeouts ~training_data_config
      ~validation_data_config ~vpc_config ~base_model_identifier
      ~custom_model_name ~hyperparameters ~job_name ~role_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
