(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption_configuration = {
  key_id : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_configuration) -> ()

let yojson_of_encryption_configuration =
  (function
   | { key_id = v_key_id; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_id in
         ("key_id", arg) :: bnds
       in
       `Assoc bnds
    : encryption_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_configuration

[@@@deriving.end]

type firewall_status__sync_states__attachment = {
  endpoint_id : string prop;
  status : string prop;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : firewall_status__sync_states__attachment) -> ()

let yojson_of_firewall_status__sync_states__attachment =
  (function
   | {
       endpoint_id = v_endpoint_id;
       status = v_status;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint_id in
         ("endpoint_id", arg) :: bnds
       in
       `Assoc bnds
    : firewall_status__sync_states__attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_firewall_status__sync_states__attachment

[@@@deriving.end]

type firewall_status__sync_states = {
  attachment : firewall_status__sync_states__attachment list;
  availability_zone : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : firewall_status__sync_states) -> ()

let yojson_of_firewall_status__sync_states =
  (function
   | {
       attachment = v_attachment;
       availability_zone = v_availability_zone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_availability_zone
         in
         ("availability_zone", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_firewall_status__sync_states__attachment
             v_attachment
         in
         ("attachment", arg) :: bnds
       in
       `Assoc bnds
    : firewall_status__sync_states ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_firewall_status__sync_states

[@@@deriving.end]

type firewall_status__capacity_usage_summary__cidrs__ip_set_references = {
  resolved_cidr_count : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       firewall_status__capacity_usage_summary__cidrs__ip_set_references) ->
  ()

let yojson_of_firewall_status__capacity_usage_summary__cidrs__ip_set_references
    =
  (function
   | { resolved_cidr_count = v_resolved_cidr_count } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_resolved_cidr_count
         in
         ("resolved_cidr_count", arg) :: bnds
       in
       `Assoc bnds
    : firewall_status__capacity_usage_summary__cidrs__ip_set_references ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_firewall_status__capacity_usage_summary__cidrs__ip_set_references

[@@@deriving.end]

type firewall_status__capacity_usage_summary__cidrs = {
  available_cidr_count : float prop;
  ip_set_references :
    firewall_status__capacity_usage_summary__cidrs__ip_set_references
    list;
  utilized_cidr_count : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : firewall_status__capacity_usage_summary__cidrs) -> ()

let yojson_of_firewall_status__capacity_usage_summary__cidrs =
  (function
   | {
       available_cidr_count = v_available_cidr_count;
       ip_set_references = v_ip_set_references;
       utilized_cidr_count = v_utilized_cidr_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_utilized_cidr_count
         in
         ("utilized_cidr_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_firewall_status__capacity_usage_summary__cidrs__ip_set_references
             v_ip_set_references
         in
         ("ip_set_references", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_available_cidr_count
         in
         ("available_cidr_count", arg) :: bnds
       in
       `Assoc bnds
    : firewall_status__capacity_usage_summary__cidrs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_firewall_status__capacity_usage_summary__cidrs

[@@@deriving.end]

type firewall_status__capacity_usage_summary = {
  cidrs : firewall_status__capacity_usage_summary__cidrs list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : firewall_status__capacity_usage_summary) -> ()

let yojson_of_firewall_status__capacity_usage_summary =
  (function
   | { cidrs = v_cidrs } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_firewall_status__capacity_usage_summary__cidrs
             v_cidrs
         in
         ("cidrs", arg) :: bnds
       in
       `Assoc bnds
    : firewall_status__capacity_usage_summary ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_firewall_status__capacity_usage_summary

[@@@deriving.end]

type firewall_status = {
  capacity_usage_summary :
    firewall_status__capacity_usage_summary list;
  configuration_sync_state_summary : string prop;
  status : string prop;
  sync_states : firewall_status__sync_states list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : firewall_status) -> ()

let yojson_of_firewall_status =
  (function
   | {
       capacity_usage_summary = v_capacity_usage_summary;
       configuration_sync_state_summary =
         v_configuration_sync_state_summary;
       status = v_status;
       sync_states = v_sync_states;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_firewall_status__sync_states
             v_sync_states
         in
         ("sync_states", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_configuration_sync_state_summary
         in
         ("configuration_sync_state_summary", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_firewall_status__capacity_usage_summary
             v_capacity_usage_summary
         in
         ("capacity_usage_summary", arg) :: bnds
       in
       `Assoc bnds
    : firewall_status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_firewall_status

[@@@deriving.end]

type subnet_mapping = { subnet_id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : subnet_mapping) -> ()

let yojson_of_subnet_mapping =
  (function
   | { subnet_id = v_subnet_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       `Assoc bnds
    : subnet_mapping -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_subnet_mapping

[@@@deriving.end]

type aws_networkfirewall_firewall = {
  arn : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_networkfirewall_firewall) -> ()

let yojson_of_aws_networkfirewall_firewall =
  (function
   | { arn = v_arn; id = v_id; name = v_name; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
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
         match v_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_networkfirewall_firewall ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_networkfirewall_firewall

[@@@deriving.end]

let aws_networkfirewall_firewall ?arn ?id ?name ?tags () :
    aws_networkfirewall_firewall =
  { arn; id; name; tags }

type t = {
  arn : string prop;
  delete_protection : bool prop;
  description : string prop;
  encryption_configuration : encryption_configuration list prop;
  firewall_policy_arn : string prop;
  firewall_policy_change_protection : bool prop;
  firewall_status : firewall_status list prop;
  id : string prop;
  name : string prop;
  subnet_change_protection : bool prop;
  subnet_mapping : subnet_mapping list prop;
  tags : (string * string) list prop;
  update_token : string prop;
  vpc_id : string prop;
}

let make ?arn ?id ?name ?tags __id =
  let __type = "aws_networkfirewall_firewall" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       delete_protection =
         Prop.computed __type __id "delete_protection";
       description = Prop.computed __type __id "description";
       encryption_configuration =
         Prop.computed __type __id "encryption_configuration";
       firewall_policy_arn =
         Prop.computed __type __id "firewall_policy_arn";
       firewall_policy_change_protection =
         Prop.computed __type __id
           "firewall_policy_change_protection";
       firewall_status = Prop.computed __type __id "firewall_status";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       subnet_change_protection =
         Prop.computed __type __id "subnet_change_protection";
       subnet_mapping = Prop.computed __type __id "subnet_mapping";
       tags = Prop.computed __type __id "tags";
       update_token = Prop.computed __type __id "update_token";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkfirewall_firewall
        (aws_networkfirewall_firewall ?arn ?id ?name ?tags ());
    attrs = __attrs;
  }

let register ?tf_module ?arn ?id ?name ?tags __id =
  let (r : _ Tf_core.resource) = make ?arn ?id ?name ?tags __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
