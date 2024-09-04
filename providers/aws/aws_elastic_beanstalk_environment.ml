(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type setting = {
  name : string prop;
  namespace : string prop;
  resource : string prop option; [@option]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : setting) -> ()

let yojson_of_setting =
  (function
   | {
       name = v_name;
       namespace = v_namespace;
       resource = v_resource;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         match v_resource with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : setting -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_setting

[@@@deriving.end]

type all_settings = {
  name : string prop;
  namespace : string prop;
  resource : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : all_settings) -> ()

let yojson_of_all_settings =
  (function
   | {
       name = v_name;
       namespace = v_namespace;
       resource = v_resource;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource in
         ("resource", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : all_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_all_settings

[@@@deriving.end]

type aws_elastic_beanstalk_environment = {
  application : string prop;
  cname_prefix : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  platform_arn : string prop option; [@option]
  poll_interval : string prop option; [@option]
  solution_stack_name : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  template_name : string prop option; [@option]
  tier : string prop option; [@option]
  version_label : string prop option; [@option]
  wait_for_ready_timeout : string prop option; [@option]
  setting : setting list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_elastic_beanstalk_environment) -> ()

let yojson_of_aws_elastic_beanstalk_environment =
  (function
   | {
       application = v_application;
       cname_prefix = v_cname_prefix;
       description = v_description;
       id = v_id;
       name = v_name;
       platform_arn = v_platform_arn;
       poll_interval = v_poll_interval;
       solution_stack_name = v_solution_stack_name;
       tags = v_tags;
       tags_all = v_tags_all;
       template_name = v_template_name;
       tier = v_tier;
       version_label = v_version_label;
       wait_for_ready_timeout = v_wait_for_ready_timeout;
       setting = v_setting;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_setting then bnds
         else
           let arg = (yojson_of_list yojson_of_setting) v_setting in
           let bnd = "setting", arg in
           bnd :: bnds
       in
       let bnds =
         match v_wait_for_ready_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "wait_for_ready_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_version_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version_label", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_template_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "template_name", arg in
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
         match v_solution_stack_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "solution_stack_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_poll_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "poll_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_platform_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "platform_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cname_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cname_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_application in
         ("application", arg) :: bnds
       in
       `Assoc bnds
    : aws_elastic_beanstalk_environment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_elastic_beanstalk_environment

[@@@deriving.end]

let setting ?resource ~name ~namespace ~value () : setting =
  { name; namespace; resource; value }

let aws_elastic_beanstalk_environment ?cname_prefix ?description ?id
    ?platform_arn ?poll_interval ?solution_stack_name ?tags ?tags_all
    ?template_name ?tier ?version_label ?wait_for_ready_timeout
    ~application ~name ~setting () :
    aws_elastic_beanstalk_environment =
  {
    application;
    cname_prefix;
    description;
    id;
    name;
    platform_arn;
    poll_interval;
    solution_stack_name;
    tags;
    tags_all;
    template_name;
    tier;
    version_label;
    wait_for_ready_timeout;
    setting;
  }

type t = {
  tf_name : string;
  all_settings : all_settings list prop;
  application : string prop;
  arn : string prop;
  autoscaling_groups : string list prop;
  cname : string prop;
  cname_prefix : string prop;
  description : string prop;
  endpoint_url : string prop;
  id : string prop;
  instances : string list prop;
  launch_configurations : string list prop;
  load_balancers : string list prop;
  name : string prop;
  platform_arn : string prop;
  poll_interval : string prop;
  queues : string list prop;
  solution_stack_name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  template_name : string prop;
  tier : string prop;
  triggers : string list prop;
  version_label : string prop;
  wait_for_ready_timeout : string prop;
}

let make ?cname_prefix ?description ?id ?platform_arn ?poll_interval
    ?solution_stack_name ?tags ?tags_all ?template_name ?tier
    ?version_label ?wait_for_ready_timeout ~application ~name
    ~setting __id =
  let __type = "aws_elastic_beanstalk_environment" in
  let __attrs =
    ({
       tf_name = __id;
       all_settings = Prop.computed __type __id "all_settings";
       application = Prop.computed __type __id "application";
       arn = Prop.computed __type __id "arn";
       autoscaling_groups =
         Prop.computed __type __id "autoscaling_groups";
       cname = Prop.computed __type __id "cname";
       cname_prefix = Prop.computed __type __id "cname_prefix";
       description = Prop.computed __type __id "description";
       endpoint_url = Prop.computed __type __id "endpoint_url";
       id = Prop.computed __type __id "id";
       instances = Prop.computed __type __id "instances";
       launch_configurations =
         Prop.computed __type __id "launch_configurations";
       load_balancers = Prop.computed __type __id "load_balancers";
       name = Prop.computed __type __id "name";
       platform_arn = Prop.computed __type __id "platform_arn";
       poll_interval = Prop.computed __type __id "poll_interval";
       queues = Prop.computed __type __id "queues";
       solution_stack_name =
         Prop.computed __type __id "solution_stack_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       template_name = Prop.computed __type __id "template_name";
       tier = Prop.computed __type __id "tier";
       triggers = Prop.computed __type __id "triggers";
       version_label = Prop.computed __type __id "version_label";
       wait_for_ready_timeout =
         Prop.computed __type __id "wait_for_ready_timeout";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_elastic_beanstalk_environment
        (aws_elastic_beanstalk_environment ?cname_prefix ?description
           ?id ?platform_arn ?poll_interval ?solution_stack_name
           ?tags ?tags_all ?template_name ?tier ?version_label
           ?wait_for_ready_timeout ~application ~name ~setting ());
    attrs = __attrs;
  }

let register ?tf_module ?cname_prefix ?description ?id ?platform_arn
    ?poll_interval ?solution_stack_name ?tags ?tags_all
    ?template_name ?tier ?version_label ?wait_for_ready_timeout
    ~application ~name ~setting __id =
  let (r : _ Tf_core.resource) =
    make ?cname_prefix ?description ?id ?platform_arn ?poll_interval
      ?solution_stack_name ?tags ?tags_all ?template_name ?tier
      ?version_label ?wait_for_ready_timeout ~application ~name
      ~setting __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
