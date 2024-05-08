(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
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

type vpc_configuration = {
  role_arn : string prop;
  security_groups : string prop list option; [@option]
  subnet_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  vpc_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_configuration) -> ()

let yojson_of_vpc_configuration =
  (function
   | {
       role_arn = v_role_arn;
       security_groups = v_security_groups;
       subnet_ids = v_subnet_ids;
       vpc_id = v_vpc_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_id in
         ("vpc_id", arg) :: bnds
       in
       let bnds =
         if [] = v_subnet_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subnet_ids
           in
           let bnd = "subnet_ids", arg in
           bnd :: bnds
       in
       let bnds =
         match v_security_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_groups", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       `Assoc bnds
    : vpc_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_configuration

[@@@deriving.end]

type aws_iot_topic_rule_destination = {
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  timeouts : timeouts option;
  vpc_configuration : vpc_configuration list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iot_topic_rule_destination) -> ()

let yojson_of_aws_iot_topic_rule_destination =
  (function
   | {
       enabled = v_enabled;
       id = v_id;
       timeouts = v_timeouts;
       vpc_configuration = v_vpc_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_vpc_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_vpc_configuration)
               v_vpc_configuration
           in
           let bnd = "vpc_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_iot_topic_rule_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iot_topic_rule_destination

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vpc_configuration ?security_groups ~role_arn ~subnet_ids ~vpc_id
    () : vpc_configuration =
  { role_arn; security_groups; subnet_ids; vpc_id }

let aws_iot_topic_rule_destination ?enabled ?id ?timeouts
    ~vpc_configuration () : aws_iot_topic_rule_destination =
  { enabled; id; timeouts; vpc_configuration }

type t = {
  tf_name : string;
  arn : string prop;
  enabled : bool prop;
  id : string prop;
}

let make ?enabled ?id ?timeouts ~vpc_configuration __id =
  let __type = "aws_iot_topic_rule_destination" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iot_topic_rule_destination
        (aws_iot_topic_rule_destination ?enabled ?id ?timeouts
           ~vpc_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?timeouts ~vpc_configuration
    __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?timeouts ~vpc_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
