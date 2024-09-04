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

type tls_inspection_configuration__server_certificate_configuration__check_certificate_revocation_status = {
  revoked_status_action : string prop option; [@option]
  unknown_status_action : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       tls_inspection_configuration__server_certificate_configuration__check_certificate_revocation_status) ->
  ()

let yojson_of_tls_inspection_configuration__server_certificate_configuration__check_certificate_revocation_status
    =
  (function
   | {
       revoked_status_action = v_revoked_status_action;
       unknown_status_action = v_unknown_status_action;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_unknown_status_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "unknown_status_action", arg in
             bnd :: bnds
       in
       let bnds =
         match v_revoked_status_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "revoked_status_action", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : tls_inspection_configuration__server_certificate_configuration__check_certificate_revocation_status ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_tls_inspection_configuration__server_certificate_configuration__check_certificate_revocation_status

[@@@deriving.end]

type tls_inspection_configuration__server_certificate_configuration__scope__destination = {
  address_definition : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       tls_inspection_configuration__server_certificate_configuration__scope__destination) ->
  ()

let yojson_of_tls_inspection_configuration__server_certificate_configuration__scope__destination
    =
  (function
   | { address_definition = v_address_definition } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_address_definition
         in
         ("address_definition", arg) :: bnds
       in
       `Assoc bnds
    : tls_inspection_configuration__server_certificate_configuration__scope__destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_tls_inspection_configuration__server_certificate_configuration__scope__destination

[@@@deriving.end]

type tls_inspection_configuration__server_certificate_configuration__scope__destination_ports = {
  from_port : float prop;
  to_port : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       tls_inspection_configuration__server_certificate_configuration__scope__destination_ports) ->
  ()

let yojson_of_tls_inspection_configuration__server_certificate_configuration__scope__destination_ports
    =
  (function
   | { from_port = v_from_port; to_port = v_to_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_to_port in
         ("to_port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_from_port in
         ("from_port", arg) :: bnds
       in
       `Assoc bnds
    : tls_inspection_configuration__server_certificate_configuration__scope__destination_ports ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_tls_inspection_configuration__server_certificate_configuration__scope__destination_ports

[@@@deriving.end]

type tls_inspection_configuration__server_certificate_configuration__scope__source = {
  address_definition : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       tls_inspection_configuration__server_certificate_configuration__scope__source) ->
  ()

let yojson_of_tls_inspection_configuration__server_certificate_configuration__scope__source
    =
  (function
   | { address_definition = v_address_definition } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_address_definition
         in
         ("address_definition", arg) :: bnds
       in
       `Assoc bnds
    : tls_inspection_configuration__server_certificate_configuration__scope__source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_tls_inspection_configuration__server_certificate_configuration__scope__source

[@@@deriving.end]

type tls_inspection_configuration__server_certificate_configuration__scope__source_ports = {
  from_port : float prop;
  to_port : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       tls_inspection_configuration__server_certificate_configuration__scope__source_ports) ->
  ()

let yojson_of_tls_inspection_configuration__server_certificate_configuration__scope__source_ports
    =
  (function
   | { from_port = v_from_port; to_port = v_to_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_to_port in
         ("to_port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_from_port in
         ("from_port", arg) :: bnds
       in
       `Assoc bnds
    : tls_inspection_configuration__server_certificate_configuration__scope__source_ports ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_tls_inspection_configuration__server_certificate_configuration__scope__source_ports

[@@@deriving.end]

type tls_inspection_configuration__server_certificate_configuration__scope = {
  protocols : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  destination :
    tls_inspection_configuration__server_certificate_configuration__scope__destination
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  destination_ports :
    tls_inspection_configuration__server_certificate_configuration__scope__destination_ports
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source :
    tls_inspection_configuration__server_certificate_configuration__scope__source
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source_ports :
    tls_inspection_configuration__server_certificate_configuration__scope__source_ports
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       tls_inspection_configuration__server_certificate_configuration__scope) ->
  ()

let yojson_of_tls_inspection_configuration__server_certificate_configuration__scope
    =
  (function
   | {
       protocols = v_protocols;
       destination = v_destination;
       destination_ports = v_destination_ports;
       source = v_source;
       source_ports = v_source_ports;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_source_ports then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_tls_inspection_configuration__server_certificate_configuration__scope__source_ports)
               v_source_ports
           in
           let bnd = "source_ports", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_source then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_tls_inspection_configuration__server_certificate_configuration__scope__source)
               v_source
           in
           let bnd = "source", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination_ports then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_tls_inspection_configuration__server_certificate_configuration__scope__destination_ports)
               v_destination_ports
           in
           let bnd = "destination_ports", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_tls_inspection_configuration__server_certificate_configuration__scope__destination)
               v_destination
           in
           let bnd = "destination", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_protocols then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_float))
               v_protocols
           in
           let bnd = "protocols", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : tls_inspection_configuration__server_certificate_configuration__scope ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_tls_inspection_configuration__server_certificate_configuration__scope

[@@@deriving.end]

type tls_inspection_configuration__server_certificate_configuration__server_certificate = {
  resource_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       tls_inspection_configuration__server_certificate_configuration__server_certificate) ->
  ()

let yojson_of_tls_inspection_configuration__server_certificate_configuration__server_certificate
    =
  (function
   | { resource_arn = v_resource_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_resource_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : tls_inspection_configuration__server_certificate_configuration__server_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_tls_inspection_configuration__server_certificate_configuration__server_certificate

[@@@deriving.end]

type tls_inspection_configuration__server_certificate_configuration = {
  certificate_authority_arn : string prop option; [@option]
  check_certificate_revocation_status :
    tls_inspection_configuration__server_certificate_configuration__check_certificate_revocation_status
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  scope :
    tls_inspection_configuration__server_certificate_configuration__scope
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  server_certificate :
    tls_inspection_configuration__server_certificate_configuration__server_certificate
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       tls_inspection_configuration__server_certificate_configuration) ->
  ()

let yojson_of_tls_inspection_configuration__server_certificate_configuration
    =
  (function
   | {
       certificate_authority_arn = v_certificate_authority_arn;
       check_certificate_revocation_status =
         v_check_certificate_revocation_status;
       scope = v_scope;
       server_certificate = v_server_certificate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_server_certificate then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_tls_inspection_configuration__server_certificate_configuration__server_certificate)
               v_server_certificate
           in
           let bnd = "server_certificate", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_scope then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_tls_inspection_configuration__server_certificate_configuration__scope)
               v_scope
           in
           let bnd = "scope", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_check_certificate_revocation_status
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_tls_inspection_configuration__server_certificate_configuration__check_certificate_revocation_status)
               v_check_certificate_revocation_status
           in
           let bnd = "check_certificate_revocation_status", arg in
           bnd :: bnds
       in
       let bnds =
         match v_certificate_authority_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_authority_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : tls_inspection_configuration__server_certificate_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_tls_inspection_configuration__server_certificate_configuration

[@@@deriving.end]

type tls_inspection_configuration = {
  server_certificate_configuration :
    tls_inspection_configuration__server_certificate_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : tls_inspection_configuration) -> ()

let yojson_of_tls_inspection_configuration =
  (function
   | {
       server_certificate_configuration =
         v_server_certificate_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_server_certificate_configuration then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_tls_inspection_configuration__server_certificate_configuration)
               v_server_certificate_configuration
           in
           let bnd = "server_certificate_configuration", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : tls_inspection_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tls_inspection_configuration

[@@@deriving.end]

type certificate_authority = {
  certificate_arn : string prop;
  certificate_serial : string prop;
  status : string prop;
  status_message : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificate_authority) -> ()

let yojson_of_certificate_authority =
  (function
   | {
       certificate_arn = v_certificate_arn;
       certificate_serial = v_certificate_serial;
       status = v_status;
       status_message = v_status_message;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_status_message
         in
         ("status_message", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_serial
         in
         ("certificate_serial", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_arn
         in
         ("certificate_arn", arg) :: bnds
       in
       `Assoc bnds
    : certificate_authority -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate_authority

[@@@deriving.end]

type certificates = {
  certificate_arn : string prop;
  certificate_serial : string prop;
  status : string prop;
  status_message : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificates) -> ()

let yojson_of_certificates =
  (function
   | {
       certificate_arn = v_certificate_arn;
       certificate_serial = v_certificate_serial;
       status = v_status;
       status_message = v_status_message;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_status_message
         in
         ("status_message", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_serial
         in
         ("certificate_serial", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_arn
         in
         ("certificate_arn", arg) :: bnds
       in
       `Assoc bnds
    : certificates -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificates

[@@@deriving.end]

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

type aws_networkfirewall_tls_inspection_configuration = {
  description : string prop option; [@option]
  encryption_configuration : encryption_configuration list option;
      [@option]
  name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  timeouts : timeouts option;
  tls_inspection_configuration : tls_inspection_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_networkfirewall_tls_inspection_configuration) -> ()

let yojson_of_aws_networkfirewall_tls_inspection_configuration =
  (function
   | {
       description = v_description;
       encryption_configuration = v_encryption_configuration;
       name = v_name;
       tags = v_tags;
       timeouts = v_timeouts;
       tls_inspection_configuration = v_tls_inspection_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tls_inspection_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_tls_inspection_configuration)
               v_tls_inspection_configuration
           in
           let bnd = "tls_inspection_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_encryption_configuration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list yojson_of_encryption_configuration v
             in
             let bnd = "encryption_configuration", arg in
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
       `Assoc bnds
    : aws_networkfirewall_tls_inspection_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_networkfirewall_tls_inspection_configuration

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let tls_inspection_configuration__server_certificate_configuration__check_certificate_revocation_status
    ?revoked_status_action ?unknown_status_action () :
    tls_inspection_configuration__server_certificate_configuration__check_certificate_revocation_status
    =
  { revoked_status_action; unknown_status_action }

let tls_inspection_configuration__server_certificate_configuration__scope__destination
    ~address_definition () :
    tls_inspection_configuration__server_certificate_configuration__scope__destination
    =
  { address_definition }

let tls_inspection_configuration__server_certificate_configuration__scope__destination_ports
    ~from_port ~to_port () :
    tls_inspection_configuration__server_certificate_configuration__scope__destination_ports
    =
  { from_port; to_port }

let tls_inspection_configuration__server_certificate_configuration__scope__source
    ~address_definition () :
    tls_inspection_configuration__server_certificate_configuration__scope__source
    =
  { address_definition }

let tls_inspection_configuration__server_certificate_configuration__scope__source_ports
    ~from_port ~to_port () :
    tls_inspection_configuration__server_certificate_configuration__scope__source_ports
    =
  { from_port; to_port }

let tls_inspection_configuration__server_certificate_configuration__scope
    ?(destination = []) ?(destination_ports = []) ?(source = [])
    ?(source_ports = []) ~protocols () :
    tls_inspection_configuration__server_certificate_configuration__scope
    =
  { protocols; destination; destination_ports; source; source_ports }

let tls_inspection_configuration__server_certificate_configuration__server_certificate
    ?resource_arn () :
    tls_inspection_configuration__server_certificate_configuration__server_certificate
    =
  { resource_arn }

let tls_inspection_configuration__server_certificate_configuration
    ?certificate_authority_arn
    ?(check_certificate_revocation_status = []) ?(scope = [])
    ?(server_certificate = []) () :
    tls_inspection_configuration__server_certificate_configuration =
  {
    certificate_authority_arn;
    check_certificate_revocation_status;
    scope;
    server_certificate;
  }

let tls_inspection_configuration
    ?(server_certificate_configuration = []) () :
    tls_inspection_configuration =
  { server_certificate_configuration }

let aws_networkfirewall_tls_inspection_configuration ?description
    ?encryption_configuration ?tags ?timeouts
    ?(tls_inspection_configuration = []) ~name () :
    aws_networkfirewall_tls_inspection_configuration =
  {
    description;
    encryption_configuration;
    name;
    tags;
    timeouts;
    tls_inspection_configuration;
  }

type t = {
  tf_name : string;
  arn : string prop;
  certificate_authority : certificate_authority list prop;
  certificates : certificates list prop;
  description : string prop;
  encryption_configuration : encryption_configuration list prop;
  id : string prop;
  name : string prop;
  number_of_associations : float prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  tls_inspection_configuration_id : string prop;
  update_token : string prop;
}

let make ?description ?encryption_configuration ?tags ?timeouts
    ?(tls_inspection_configuration = []) ~name __id =
  let __type = "aws_networkfirewall_tls_inspection_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       certificate_authority =
         Prop.computed __type __id "certificate_authority";
       certificates = Prop.computed __type __id "certificates";
       description = Prop.computed __type __id "description";
       encryption_configuration =
         Prop.computed __type __id "encryption_configuration";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       number_of_associations =
         Prop.computed __type __id "number_of_associations";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       tls_inspection_configuration_id =
         Prop.computed __type __id "tls_inspection_configuration_id";
       update_token = Prop.computed __type __id "update_token";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkfirewall_tls_inspection_configuration
        (aws_networkfirewall_tls_inspection_configuration
           ?description ?encryption_configuration ?tags ?timeouts
           ~tls_inspection_configuration ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?encryption_configuration ?tags
    ?timeouts ?(tls_inspection_configuration = []) ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?encryption_configuration ?tags ?timeouts
      ~tls_inspection_configuration ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
