(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type load_balancer_options = {
  load_balancer_arn : string prop option; [@option]
      (** load_balancer_arn *)
  port : float prop option; [@option]  (** port *)
  protocol : string prop option; [@option]  (** protocol *)
  subnet_ids : string prop list option; [@option]  (** subnet_ids *)
}
[@@deriving yojson_of]
(** load_balancer_options *)

type network_interface_options = {
  network_interface_id : string prop option; [@option]
      (** network_interface_id *)
  port : float prop option; [@option]  (** port *)
  protocol : string prop option; [@option]  (** protocol *)
}
[@@deriving yojson_of]
(** network_interface_options *)

type sse_specification = {
  customer_managed_key_enabled : bool prop option; [@option]
      (** customer_managed_key_enabled *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
}
[@@deriving yojson_of]
(** sse_specification *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_verifiedaccess_endpoint = {
  application_domain : string prop;  (** application_domain *)
  attachment_type : string prop;  (** attachment_type *)
  description : string prop option; [@option]  (** description *)
  domain_certificate_arn : string prop;
      (** domain_certificate_arn *)
  endpoint_domain_prefix : string prop;
      (** endpoint_domain_prefix *)
  endpoint_type : string prop;  (** endpoint_type *)
  id : string prop option; [@option]  (** id *)
  policy_document : string prop option; [@option]
      (** policy_document *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  verified_access_group_id : string prop;
      (** verified_access_group_id *)
  load_balancer_options : load_balancer_options list;
  network_interface_options : network_interface_options list;
  sse_specification : sse_specification list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_verifiedaccess_endpoint *)

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
    ?security_group_ids ?tags ?tags_all ?timeouts ~application_domain
    ~attachment_type ~domain_certificate_arn ~endpoint_domain_prefix
    ~endpoint_type ~verified_access_group_id ~load_balancer_options
    ~network_interface_options ~sse_specification () :
    aws_verifiedaccess_endpoint =
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
    ?tags_all ?timeouts ~application_domain ~attachment_type
    ~domain_certificate_arn ~endpoint_domain_prefix ~endpoint_type
    ~verified_access_group_id ~load_balancer_options
    ~network_interface_options ~sse_specification __id =
  let __type = "aws_verifiedaccess_endpoint" in
  let __attrs =
    ({
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
           ?timeouts ~application_domain ~attachment_type
           ~domain_certificate_arn ~endpoint_domain_prefix
           ~endpoint_type ~verified_access_group_id
           ~load_balancer_options ~network_interface_options
           ~sse_specification ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?policy_document
    ?security_group_ids ?tags ?tags_all ?timeouts ~application_domain
    ~attachment_type ~domain_certificate_arn ~endpoint_domain_prefix
    ~endpoint_type ~verified_access_group_id ~load_balancer_options
    ~network_interface_options ~sse_specification __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?policy_document ?security_group_ids ?tags
      ?tags_all ?timeouts ~application_domain ~attachment_type
      ~domain_certificate_arn ~endpoint_domain_prefix ~endpoint_type
      ~verified_access_group_id ~load_balancer_options
      ~network_interface_options ~sse_specification __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
