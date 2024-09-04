(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type human_loop_activation_config__human_loop_activation_conditions_config = {
  human_loop_activation_conditions : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       human_loop_activation_config__human_loop_activation_conditions_config) ->
  ()

let yojson_of_human_loop_activation_config__human_loop_activation_conditions_config
    =
  (function
   | {
       human_loop_activation_conditions =
         v_human_loop_activation_conditions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_human_loop_activation_conditions
         in
         ("human_loop_activation_conditions", arg) :: bnds
       in
       `Assoc bnds
    : human_loop_activation_config__human_loop_activation_conditions_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_human_loop_activation_config__human_loop_activation_conditions_config

[@@@deriving.end]

type human_loop_activation_config = {
  human_loop_activation_conditions_config :
    human_loop_activation_config__human_loop_activation_conditions_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : human_loop_activation_config) -> ()

let yojson_of_human_loop_activation_config =
  (function
   | {
       human_loop_activation_conditions_config =
         v_human_loop_activation_conditions_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_human_loop_activation_conditions_config
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_human_loop_activation_config__human_loop_activation_conditions_config)
               v_human_loop_activation_conditions_config
           in
           let bnd =
             "human_loop_activation_conditions_config", arg
           in
           bnd :: bnds
       in
       `Assoc bnds
    : human_loop_activation_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_human_loop_activation_config

[@@@deriving.end]

type human_loop_config__public_workforce_task_price__amount_in_usd = {
  cents : float prop option; [@option]
  dollars : float prop option; [@option]
  tenth_fractions_of_a_cent : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       human_loop_config__public_workforce_task_price__amount_in_usd) ->
  ()

let yojson_of_human_loop_config__public_workforce_task_price__amount_in_usd
    =
  (function
   | {
       cents = v_cents;
       dollars = v_dollars;
       tenth_fractions_of_a_cent = v_tenth_fractions_of_a_cent;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tenth_fractions_of_a_cent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "tenth_fractions_of_a_cent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dollars with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "dollars", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cents with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cents", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : human_loop_config__public_workforce_task_price__amount_in_usd ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_human_loop_config__public_workforce_task_price__amount_in_usd

[@@@deriving.end]

type human_loop_config__public_workforce_task_price = {
  amount_in_usd :
    human_loop_config__public_workforce_task_price__amount_in_usd
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : human_loop_config__public_workforce_task_price) -> ()

let yojson_of_human_loop_config__public_workforce_task_price =
  (function
   | { amount_in_usd = v_amount_in_usd } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_amount_in_usd then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_human_loop_config__public_workforce_task_price__amount_in_usd)
               v_amount_in_usd
           in
           let bnd = "amount_in_usd", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : human_loop_config__public_workforce_task_price ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_human_loop_config__public_workforce_task_price

[@@@deriving.end]

type human_loop_config = {
  human_task_ui_arn : string prop;
  task_availability_lifetime_in_seconds : float prop option;
      [@option]
  task_count : float prop;
  task_description : string prop;
  task_keywords : string prop list option; [@option]
  task_time_limit_in_seconds : float prop option; [@option]
  task_title : string prop;
  workteam_arn : string prop;
  public_workforce_task_price :
    human_loop_config__public_workforce_task_price list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : human_loop_config) -> ()

let yojson_of_human_loop_config =
  (function
   | {
       human_task_ui_arn = v_human_task_ui_arn;
       task_availability_lifetime_in_seconds =
         v_task_availability_lifetime_in_seconds;
       task_count = v_task_count;
       task_description = v_task_description;
       task_keywords = v_task_keywords;
       task_time_limit_in_seconds = v_task_time_limit_in_seconds;
       task_title = v_task_title;
       workteam_arn = v_workteam_arn;
       public_workforce_task_price = v_public_workforce_task_price;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_public_workforce_task_price then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_human_loop_config__public_workforce_task_price)
               v_public_workforce_task_price
           in
           let bnd = "public_workforce_task_price", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_workteam_arn in
         ("workteam_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_task_title in
         ("task_title", arg) :: bnds
       in
       let bnds =
         match v_task_time_limit_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "task_time_limit_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_task_keywords with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "task_keywords", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_task_description
         in
         ("task_description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_task_count in
         ("task_count", arg) :: bnds
       in
       let bnds =
         match v_task_availability_lifetime_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "task_availability_lifetime_in_seconds", arg
             in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_human_task_ui_arn
         in
         ("human_task_ui_arn", arg) :: bnds
       in
       `Assoc bnds
    : human_loop_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_human_loop_config

[@@@deriving.end]

type human_loop_request_source = {
  aws_managed_human_loop_request_source : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : human_loop_request_source) -> ()

let yojson_of_human_loop_request_source =
  (function
   | {
       aws_managed_human_loop_request_source =
         v_aws_managed_human_loop_request_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_aws_managed_human_loop_request_source
         in
         ("aws_managed_human_loop_request_source", arg) :: bnds
       in
       `Assoc bnds
    : human_loop_request_source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_human_loop_request_source

[@@@deriving.end]

type output_config = {
  kms_key_id : string prop option; [@option]
  s3_output_path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output_config) -> ()

let yojson_of_output_config =
  (function
   | { kms_key_id = v_kms_key_id; s3_output_path = v_s3_output_path }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_s3_output_path
         in
         ("s3_output_path", arg) :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : output_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output_config

[@@@deriving.end]

type aws_sagemaker_flow_definition = {
  flow_definition_name : string prop;
  id : string prop option; [@option]
  role_arn : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  human_loop_activation_config : human_loop_activation_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  human_loop_config : human_loop_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  human_loop_request_source : human_loop_request_source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  output_config : output_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sagemaker_flow_definition) -> ()

let yojson_of_aws_sagemaker_flow_definition =
  (function
   | {
       flow_definition_name = v_flow_definition_name;
       id = v_id;
       role_arn = v_role_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       human_loop_activation_config = v_human_loop_activation_config;
       human_loop_config = v_human_loop_config;
       human_loop_request_source = v_human_loop_request_source;
       output_config = v_output_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_output_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_output_config) v_output_config
           in
           let bnd = "output_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_human_loop_request_source then bnds
         else
           let arg =
             (yojson_of_list yojson_of_human_loop_request_source)
               v_human_loop_request_source
           in
           let bnd = "human_loop_request_source", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_human_loop_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_human_loop_config)
               v_human_loop_config
           in
           let bnd = "human_loop_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_human_loop_activation_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_human_loop_activation_config)
               v_human_loop_activation_config
           in
           let bnd = "human_loop_activation_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
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
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_flow_definition_name
         in
         ("flow_definition_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_sagemaker_flow_definition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sagemaker_flow_definition

[@@@deriving.end]

let human_loop_activation_config__human_loop_activation_conditions_config
    ~human_loop_activation_conditions () :
    human_loop_activation_config__human_loop_activation_conditions_config
    =
  { human_loop_activation_conditions }

let human_loop_activation_config
    ?(human_loop_activation_conditions_config = []) () :
    human_loop_activation_config =
  { human_loop_activation_conditions_config }

let human_loop_config__public_workforce_task_price__amount_in_usd
    ?cents ?dollars ?tenth_fractions_of_a_cent () :
    human_loop_config__public_workforce_task_price__amount_in_usd =
  { cents; dollars; tenth_fractions_of_a_cent }

let human_loop_config__public_workforce_task_price
    ?(amount_in_usd = []) () :
    human_loop_config__public_workforce_task_price =
  { amount_in_usd }

let human_loop_config ?task_availability_lifetime_in_seconds
    ?task_keywords ?task_time_limit_in_seconds
    ?(public_workforce_task_price = []) ~human_task_ui_arn
    ~task_count ~task_description ~task_title ~workteam_arn () :
    human_loop_config =
  {
    human_task_ui_arn;
    task_availability_lifetime_in_seconds;
    task_count;
    task_description;
    task_keywords;
    task_time_limit_in_seconds;
    task_title;
    workteam_arn;
    public_workforce_task_price;
  }

let human_loop_request_source ~aws_managed_human_loop_request_source
    () : human_loop_request_source =
  { aws_managed_human_loop_request_source }

let output_config ?kms_key_id ~s3_output_path () : output_config =
  { kms_key_id; s3_output_path }

let aws_sagemaker_flow_definition ?id ?tags ?tags_all
    ?(human_loop_activation_config = [])
    ?(human_loop_request_source = []) ~flow_definition_name ~role_arn
    ~human_loop_config ~output_config () :
    aws_sagemaker_flow_definition =
  {
    flow_definition_name;
    id;
    role_arn;
    tags;
    tags_all;
    human_loop_activation_config;
    human_loop_config;
    human_loop_request_source;
    output_config;
  }

type t = {
  tf_name : string;
  arn : string prop;
  flow_definition_name : string prop;
  id : string prop;
  role_arn : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?id ?tags ?tags_all ?(human_loop_activation_config = [])
    ?(human_loop_request_source = []) ~flow_definition_name ~role_arn
    ~human_loop_config ~output_config __id =
  let __type = "aws_sagemaker_flow_definition" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       flow_definition_name =
         Prop.computed __type __id "flow_definition_name";
       id = Prop.computed __type __id "id";
       role_arn = Prop.computed __type __id "role_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_flow_definition
        (aws_sagemaker_flow_definition ?id ?tags ?tags_all
           ~human_loop_activation_config ~human_loop_request_source
           ~flow_definition_name ~role_arn ~human_loop_config
           ~output_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all
    ?(human_loop_activation_config = [])
    ?(human_loop_request_source = []) ~flow_definition_name ~role_arn
    ~human_loop_config ~output_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~human_loop_activation_config
      ~human_loop_request_source ~flow_definition_name ~role_arn
      ~human_loop_config ~output_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
