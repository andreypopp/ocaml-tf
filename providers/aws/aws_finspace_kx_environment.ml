(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type custom_dns_configuration = {
  custom_dns_server_ip : string prop;
  custom_dns_server_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_dns_configuration) -> ()

let yojson_of_custom_dns_configuration =
  (function
   | {
       custom_dns_server_ip = v_custom_dns_server_ip;
       custom_dns_server_name = v_custom_dns_server_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_custom_dns_server_name
         in
         ("custom_dns_server_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_custom_dns_server_ip
         in
         ("custom_dns_server_ip", arg) :: bnds
       in
       `Assoc bnds
    : custom_dns_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_dns_configuration

[@@@deriving.end]

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

type transit_gateway_configuration__attachment_network_acl_configuration__icmp_type_code = {
  code : float prop;
  type_ : float prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       transit_gateway_configuration__attachment_network_acl_configuration__icmp_type_code) ->
  ()

let yojson_of_transit_gateway_configuration__attachment_network_acl_configuration__icmp_type_code
    =
  (function
   | { code = v_code; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_code in
         ("code", arg) :: bnds
       in
       `Assoc bnds
    : transit_gateway_configuration__attachment_network_acl_configuration__icmp_type_code ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_transit_gateway_configuration__attachment_network_acl_configuration__icmp_type_code

[@@@deriving.end]

type transit_gateway_configuration__attachment_network_acl_configuration__port_range = {
  from : float prop;
  to_ : float prop; [@key "to"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       transit_gateway_configuration__attachment_network_acl_configuration__port_range) ->
  ()

let yojson_of_transit_gateway_configuration__attachment_network_acl_configuration__port_range
    =
  (function
   | { from = v_from; to_ = v_to_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_to_ in
         ("to", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_from in
         ("from", arg) :: bnds
       in
       `Assoc bnds
    : transit_gateway_configuration__attachment_network_acl_configuration__port_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_transit_gateway_configuration__attachment_network_acl_configuration__port_range

[@@@deriving.end]

type transit_gateway_configuration__attachment_network_acl_configuration = {
  cidr_block : string prop;
  protocol : string prop;
  rule_action : string prop;
  rule_number : float prop;
  icmp_type_code :
    transit_gateway_configuration__attachment_network_acl_configuration__icmp_type_code
    list;
      [@default []] [@yojson_drop_default ( = )]
  port_range :
    transit_gateway_configuration__attachment_network_acl_configuration__port_range
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       transit_gateway_configuration__attachment_network_acl_configuration) ->
  ()

let yojson_of_transit_gateway_configuration__attachment_network_acl_configuration
    =
  (function
   | {
       cidr_block = v_cidr_block;
       protocol = v_protocol;
       rule_action = v_rule_action;
       rule_number = v_rule_number;
       icmp_type_code = v_icmp_type_code;
       port_range = v_port_range;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_port_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_transit_gateway_configuration__attachment_network_acl_configuration__port_range)
               v_port_range
           in
           let bnd = "port_range", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_icmp_type_code then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_transit_gateway_configuration__attachment_network_acl_configuration__icmp_type_code)
               v_icmp_type_code
           in
           let bnd = "icmp_type_code", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_rule_number in
         ("rule_number", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule_action in
         ("rule_action", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cidr_block in
         ("cidr_block", arg) :: bnds
       in
       `Assoc bnds
    : transit_gateway_configuration__attachment_network_acl_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_transit_gateway_configuration__attachment_network_acl_configuration

[@@@deriving.end]

type transit_gateway_configuration = {
  routable_cidr_space : string prop;
  transit_gateway_id : string prop;
  attachment_network_acl_configuration :
    transit_gateway_configuration__attachment_network_acl_configuration
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : transit_gateway_configuration) -> ()

let yojson_of_transit_gateway_configuration =
  (function
   | {
       routable_cidr_space = v_routable_cidr_space;
       transit_gateway_id = v_transit_gateway_id;
       attachment_network_acl_configuration =
         v_attachment_network_acl_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_attachment_network_acl_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_transit_gateway_configuration__attachment_network_acl_configuration)
               v_attachment_network_acl_configuration
           in
           let bnd = "attachment_network_acl_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_transit_gateway_id
         in
         ("transit_gateway_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_routable_cidr_space
         in
         ("routable_cidr_space", arg) :: bnds
       in
       `Assoc bnds
    : transit_gateway_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_transit_gateway_configuration

[@@@deriving.end]

type aws_finspace_kx_environment = {
  description : string prop option; [@option]
  kms_key_id : string prop;
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  custom_dns_configuration : custom_dns_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
  transit_gateway_configuration : transit_gateway_configuration list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_finspace_kx_environment) -> ()

let yojson_of_aws_finspace_kx_environment =
  (function
   | {
       description = v_description;
       kms_key_id = v_kms_key_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       custom_dns_configuration = v_custom_dns_configuration;
       timeouts = v_timeouts;
       transit_gateway_configuration =
         v_transit_gateway_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_transit_gateway_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_transit_gateway_configuration)
               v_transit_gateway_configuration
           in
           let bnd = "transit_gateway_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_custom_dns_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_custom_dns_configuration)
               v_custom_dns_configuration
           in
           let bnd = "custom_dns_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_id in
         ("kms_key_id", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_finspace_kx_environment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_finspace_kx_environment

[@@@deriving.end]

let custom_dns_configuration ~custom_dns_server_ip
    ~custom_dns_server_name () : custom_dns_configuration =
  { custom_dns_server_ip; custom_dns_server_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let transit_gateway_configuration__attachment_network_acl_configuration__icmp_type_code
    ~code ~type_ () :
    transit_gateway_configuration__attachment_network_acl_configuration__icmp_type_code
    =
  { code; type_ }

let transit_gateway_configuration__attachment_network_acl_configuration__port_range
    ~from ~to_ () :
    transit_gateway_configuration__attachment_network_acl_configuration__port_range
    =
  { from; to_ }

let transit_gateway_configuration__attachment_network_acl_configuration
    ?(icmp_type_code = []) ?(port_range = []) ~cidr_block ~protocol
    ~rule_action ~rule_number () :
    transit_gateway_configuration__attachment_network_acl_configuration
    =
  {
    cidr_block;
    protocol;
    rule_action;
    rule_number;
    icmp_type_code;
    port_range;
  }

let transit_gateway_configuration
    ?(attachment_network_acl_configuration = []) ~routable_cidr_space
    ~transit_gateway_id () : transit_gateway_configuration =
  {
    routable_cidr_space;
    transit_gateway_id;
    attachment_network_acl_configuration;
  }

let aws_finspace_kx_environment ?description ?tags ?tags_all
    ?(custom_dns_configuration = []) ?timeouts
    ?(transit_gateway_configuration = []) ~kms_key_id ~name () :
    aws_finspace_kx_environment =
  {
    description;
    kms_key_id;
    name;
    tags;
    tags_all;
    custom_dns_configuration;
    timeouts;
    transit_gateway_configuration;
  }

type t = {
  tf_name : string;
  arn : string prop;
  availability_zones : string list prop;
  created_timestamp : string prop;
  description : string prop;
  id : string prop;
  infrastructure_account_id : string prop;
  kms_key_id : string prop;
  last_modified_timestamp : string prop;
  name : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?tags ?tags_all
    ?(custom_dns_configuration = []) ?timeouts
    ?(transit_gateway_configuration = []) ~kms_key_id ~name __id =
  let __type = "aws_finspace_kx_environment" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       availability_zones =
         Prop.computed __type __id "availability_zones";
       created_timestamp =
         Prop.computed __type __id "created_timestamp";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       infrastructure_account_id =
         Prop.computed __type __id "infrastructure_account_id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       last_modified_timestamp =
         Prop.computed __type __id "last_modified_timestamp";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_finspace_kx_environment
        (aws_finspace_kx_environment ?description ?tags ?tags_all
           ~custom_dns_configuration ?timeouts
           ~transit_gateway_configuration ~kms_key_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?tags ?tags_all
    ?(custom_dns_configuration = []) ?timeouts
    ?(transit_gateway_configuration = []) ~kms_key_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?tags ?tags_all ~custom_dns_configuration
      ?timeouts ~transit_gateway_configuration ~kms_key_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
