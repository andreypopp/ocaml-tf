(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type load_balancer_options = {
  load_balancer_arn : string prop option; [@option]
  port : float prop option; [@option]
  protocol : string prop option; [@option]
  subnet_ids : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_balancer_options) -> ()

let yojson_of_load_balancer_options =
  (function
   | {
       load_balancer_arn = v_load_balancer_arn;
       port = v_port;
       protocol = v_protocol;
       subnet_ids = v_subnet_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subnet_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "subnet_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_load_balancer_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "load_balancer_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : load_balancer_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_balancer_options

[@@@deriving.end]

type network_interface_options = {
  network_interface_id : string prop option; [@option]
  port : float prop option; [@option]
  protocol : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_interface_options) -> ()

let yojson_of_network_interface_options =
  (function
   | {
       network_interface_id = v_network_interface_id;
       port = v_port;
       protocol = v_protocol;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_interface_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_interface_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_interface_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_interface_options

[@@@deriving.end]

type sse_specification = {
  customer_managed_key_enabled : bool prop option; [@option]
  kms_key_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sse_specification) -> ()

let yojson_of_sse_specification =
  (function
   | {
       customer_managed_key_enabled = v_customer_managed_key_enabled;
       kms_key_arn = v_kms_key_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_customer_managed_key_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "customer_managed_key_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sse_specification -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sse_specification

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

type aws_verifiedaccess_endpoint = {
  application_domain : string prop;
  attachment_type : string prop;
  description : string prop option; [@option]
  domain_certificate_arn : string prop;
  endpoint_domain_prefix : string prop;
  endpoint_type : string prop;
  id : string prop option; [@option]
  policy_document : string prop option; [@option]
  security_group_ids : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  verified_access_group_id : string prop;
  load_balancer_options : load_balancer_options list;
      [@default []] [@yojson_drop_default ( = )]
  network_interface_options : network_interface_options list;
      [@default []] [@yojson_drop_default ( = )]
  sse_specification : sse_specification list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_verifiedaccess_endpoint) -> ()

let yojson_of_aws_verifiedaccess_endpoint =
  (function
   | {
       application_domain = v_application_domain;
       attachment_type = v_attachment_type;
       description = v_description;
       domain_certificate_arn = v_domain_certificate_arn;
       endpoint_domain_prefix = v_endpoint_domain_prefix;
       endpoint_type = v_endpoint_type;
       id = v_id;
       policy_document = v_policy_document;
       security_group_ids = v_security_group_ids;
       tags = v_tags;
       tags_all = v_tags_all;
       verified_access_group_id = v_verified_access_group_id;
       load_balancer_options = v_load_balancer_options;
       network_interface_options = v_network_interface_options;
       sse_specification = v_sse_specification;
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
         if [] = v_sse_specification then bnds
         else
           let arg =
             (yojson_of_list yojson_of_sse_specification)
               v_sse_specification
           in
           let bnd = "sse_specification", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_network_interface_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_interface_options)
               v_network_interface_options
           in
           let bnd = "network_interface_options", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_load_balancer_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_load_balancer_options)
               v_load_balancer_options
           in
           let bnd = "load_balancer_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_verified_access_group_id
         in
         ("verified_access_group_id", arg) :: bnds
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
         match v_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_group_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy_document with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_document", arg in
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
         let arg = yojson_of_prop yojson_of_string v_endpoint_type in
         ("endpoint_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_endpoint_domain_prefix
         in
         ("endpoint_domain_prefix", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_domain_certificate_arn
         in
         ("domain_certificate_arn", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_attachment_type
         in
         ("attachment_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_domain
         in
         ("application_domain", arg) :: bnds
       in
       `Assoc bnds
    : aws_verifiedaccess_endpoint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_verifiedaccess_endpoint

[@@@deriving.end]

let load_balancer_options ?load_balancer_arn ?port ?protocol
    ?subnet_ids () : load_balancer_options =
  { load_balancer_arn; port; protocol; subnet_ids }

let network_interface_options ?network_interface_id ?port ?protocol
    () : network_interface_options =
  { network_interface_id; port; protocol }

let sse_specification ?customer_managed_key_enabled ?kms_key_arn () :
    sse_specification =
  { customer_managed_key_enabled; kms_key_arn }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_verifiedaccess_endpoint ?description ?id ?policy_document
    ?security_group_ids ?tags ?tags_all ?(load_balancer_options = [])
    ?(network_interface_options = []) ?(sse_specification = [])
    ?timeouts ~application_domain ~attachment_type
    ~domain_certificate_arn ~endpoint_domain_prefix ~endpoint_type
    ~verified_access_group_id () : aws_verifiedaccess_endpoint =
  {
    application_domain;
    attachment_type;
    description;
    domain_certificate_arn;
    endpoint_domain_prefix;
    endpoint_type;
    id;
    policy_document;
    security_group_ids;
    tags;
    tags_all;
    verified_access_group_id;
    load_balancer_options;
    network_interface_options;
    sse_specification;
    timeouts;
  }

type t = {
  tf_name : string;
  application_domain : string prop;
  attachment_type : string prop;
  description : string prop;
  device_validation_domain : string prop;
  domain_certificate_arn : string prop;
  endpoint_domain : string prop;
  endpoint_domain_prefix : string prop;
  endpoint_type : string prop;
  id : string prop;
  policy_document : string prop;
  security_group_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  verified_access_group_id : string prop;
  verified_access_instance_id : string prop;
}

let make ?description ?id ?policy_document ?security_group_ids ?tags
    ?tags_all ?(load_balancer_options = [])
    ?(network_interface_options = []) ?(sse_specification = [])
    ?timeouts ~application_domain ~attachment_type
    ~domain_certificate_arn ~endpoint_domain_prefix ~endpoint_type
    ~verified_access_group_id __id =
  let __type = "aws_verifiedaccess_endpoint" in
  let __attrs =
    ({
       tf_name = __id;
       application_domain =
         Prop.computed __type __id "application_domain";
       attachment_type = Prop.computed __type __id "attachment_type";
       description = Prop.computed __type __id "description";
       device_validation_domain =
         Prop.computed __type __id "device_validation_domain";
       domain_certificate_arn =
         Prop.computed __type __id "domain_certificate_arn";
       endpoint_domain = Prop.computed __type __id "endpoint_domain";
       endpoint_domain_prefix =
         Prop.computed __type __id "endpoint_domain_prefix";
       endpoint_type = Prop.computed __type __id "endpoint_type";
       id = Prop.computed __type __id "id";
       policy_document = Prop.computed __type __id "policy_document";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       verified_access_group_id =
         Prop.computed __type __id "verified_access_group_id";
       verified_access_instance_id =
         Prop.computed __type __id "verified_access_instance_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_verifiedaccess_endpoint
        (aws_verifiedaccess_endpoint ?description ?id
           ?policy_document ?security_group_ids ?tags ?tags_all
           ~load_balancer_options ~network_interface_options
           ~sse_specification ?timeouts ~application_domain
           ~attachment_type ~domain_certificate_arn
           ~endpoint_domain_prefix ~endpoint_type
           ~verified_access_group_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?policy_document
    ?security_group_ids ?tags ?tags_all ?(load_balancer_options = [])
    ?(network_interface_options = []) ?(sse_specification = [])
    ?timeouts ~application_domain ~attachment_type
    ~domain_certificate_arn ~endpoint_domain_prefix ~endpoint_type
    ~verified_access_group_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?policy_document ?security_group_ids ?tags
      ?tags_all ~load_balancer_options ~network_interface_options
      ~sse_specification ?timeouts ~application_domain
      ~attachment_type ~domain_certificate_arn
      ~endpoint_domain_prefix ~endpoint_type
      ~verified_access_group_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
