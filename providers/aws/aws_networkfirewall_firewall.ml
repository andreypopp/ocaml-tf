(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption_configuration = {
  key_id : string prop option; [@option]
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
         match v_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encryption_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_configuration

[@@@deriving.end]

type subnet_mapping = {
  ip_address_type : string prop option; [@option]
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : subnet_mapping) -> ()

let yojson_of_subnet_mapping =
  (function
   | { ip_address_type = v_ip_address_type; subnet_id = v_subnet_id }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         match v_ip_address_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_address_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : subnet_mapping -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_subnet_mapping

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

type firewall_status__sync_states__attachment = {
  endpoint_id : string prop;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : firewall_status__sync_states__attachment) -> ()

let yojson_of_firewall_status__sync_states__attachment =
  (function
   | { endpoint_id = v_endpoint_id; subnet_id = v_subnet_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
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
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_attachment then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_firewall_status__sync_states__attachment)
               v_attachment
           in
           let bnd = "attachment", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : firewall_status__sync_states ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_firewall_status__sync_states

[@@@deriving.end]

type firewall_status = {
  sync_states : firewall_status__sync_states list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : firewall_status) -> ()

let yojson_of_firewall_status =
  (function
   | { sync_states = v_sync_states } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_sync_states then bnds
         else
           let arg =
             (yojson_of_list yojson_of_firewall_status__sync_states)
               v_sync_states
           in
           let bnd = "sync_states", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : firewall_status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_firewall_status

[@@@deriving.end]

type aws_networkfirewall_firewall = {
  delete_protection : bool prop option; [@option]
  description : string prop option; [@option]
  firewall_policy_arn : string prop;
  firewall_policy_change_protection : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  subnet_change_protection : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  vpc_id : string prop;
  encryption_configuration : encryption_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  subnet_mapping : subnet_mapping list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_networkfirewall_firewall) -> ()

let yojson_of_aws_networkfirewall_firewall =
  (function
   | {
       delete_protection = v_delete_protection;
       description = v_description;
       firewall_policy_arn = v_firewall_policy_arn;
       firewall_policy_change_protection =
         v_firewall_policy_change_protection;
       id = v_id;
       name = v_name;
       subnet_change_protection = v_subnet_change_protection;
       tags = v_tags;
       tags_all = v_tags_all;
       vpc_id = v_vpc_id;
       encryption_configuration = v_encryption_configuration;
       subnet_mapping = v_subnet_mapping;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_subnet_mapping then bnds
         else
           let arg =
             (yojson_of_list yojson_of_subnet_mapping)
               v_subnet_mapping
           in
           let bnd = "subnet_mapping", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_encryption_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_encryption_configuration)
               v_encryption_configuration
           in
           let bnd = "encryption_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_id in
         ("vpc_id", arg) :: bnds
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
         match v_subnet_change_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "subnet_change_protection", arg in
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
         match v_firewall_policy_change_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "firewall_policy_change_protection", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_firewall_policy_arn
         in
         ("firewall_policy_arn", arg) :: bnds
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
         match v_delete_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_protection", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_networkfirewall_firewall ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_networkfirewall_firewall

[@@@deriving.end]

let encryption_configuration ?key_id ~type_ () :
    encryption_configuration =
  { key_id; type_ }

let subnet_mapping ?ip_address_type ~subnet_id () : subnet_mapping =
  { ip_address_type; subnet_id }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_networkfirewall_firewall ?delete_protection ?description
    ?firewall_policy_change_protection ?id ?subnet_change_protection
    ?tags ?tags_all ?(encryption_configuration = []) ?timeouts
    ~firewall_policy_arn ~name ~vpc_id ~subnet_mapping () :
    aws_networkfirewall_firewall =
  {
    delete_protection;
    description;
    firewall_policy_arn;
    firewall_policy_change_protection;
    id;
    name;
    subnet_change_protection;
    tags;
    tags_all;
    vpc_id;
    encryption_configuration;
    subnet_mapping;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  delete_protection : bool prop;
  description : string prop;
  firewall_policy_arn : string prop;
  firewall_policy_change_protection : bool prop;
  firewall_status : firewall_status list prop;
  id : string prop;
  name : string prop;
  subnet_change_protection : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  update_token : string prop;
  vpc_id : string prop;
}

let make ?delete_protection ?description
    ?firewall_policy_change_protection ?id ?subnet_change_protection
    ?tags ?tags_all ?(encryption_configuration = []) ?timeouts
    ~firewall_policy_arn ~name ~vpc_id ~subnet_mapping __id =
  let __type = "aws_networkfirewall_firewall" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       delete_protection =
         Prop.computed __type __id "delete_protection";
       description = Prop.computed __type __id "description";
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
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
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
        (aws_networkfirewall_firewall ?delete_protection ?description
           ?firewall_policy_change_protection ?id
           ?subnet_change_protection ?tags ?tags_all
           ~encryption_configuration ?timeouts ~firewall_policy_arn
           ~name ~vpc_id ~subnet_mapping ());
    attrs = __attrs;
  }

let register ?tf_module ?delete_protection ?description
    ?firewall_policy_change_protection ?id ?subnet_change_protection
    ?tags ?tags_all ?(encryption_configuration = []) ?timeouts
    ~firewall_policy_arn ~name ~vpc_id ~subnet_mapping __id =
  let (r : _ Tf_core.resource) =
    make ?delete_protection ?description
      ?firewall_policy_change_protection ?id
      ?subnet_change_protection ?tags ?tags_all
      ~encryption_configuration ?timeouts ~firewall_policy_arn ~name
      ~vpc_id ~subnet_mapping __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
