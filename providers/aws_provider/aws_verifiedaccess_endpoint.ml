(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_verifiedaccess_endpoint__load_balancer_options = {
  load_balancer_arn : string prop option; [@option]
      (** load_balancer_arn *)
  port : float prop option; [@option]  (** port *)
  protocol : string prop option; [@option]  (** protocol *)
  subnet_ids : string prop list option; [@option]  (** subnet_ids *)
}
[@@deriving yojson_of]
(** aws_verifiedaccess_endpoint__load_balancer_options *)

type aws_verifiedaccess_endpoint__network_interface_options = {
  network_interface_id : string prop option; [@option]
      (** network_interface_id *)
  port : float prop option; [@option]  (** port *)
  protocol : string prop option; [@option]  (** protocol *)
}
[@@deriving yojson_of]
(** aws_verifiedaccess_endpoint__network_interface_options *)

type aws_verifiedaccess_endpoint__sse_specification = {
  customer_managed_key_enabled : bool prop option; [@option]
      (** customer_managed_key_enabled *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
}
[@@deriving yojson_of]
(** aws_verifiedaccess_endpoint__sse_specification *)

type aws_verifiedaccess_endpoint__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_verifiedaccess_endpoint__timeouts *)

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
  load_balancer_options :
    aws_verifiedaccess_endpoint__load_balancer_options list;
  network_interface_options :
    aws_verifiedaccess_endpoint__network_interface_options list;
  sse_specification :
    aws_verifiedaccess_endpoint__sse_specification list;
  timeouts : aws_verifiedaccess_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** aws_verifiedaccess_endpoint *)

let aws_verifiedaccess_endpoint ?description ?id ?policy_document
    ?security_group_ids ?tags ?tags_all ?timeouts ~application_domain
    ~attachment_type ~domain_certificate_arn ~endpoint_domain_prefix
    ~endpoint_type ~verified_access_group_id ~load_balancer_options
    ~network_interface_options ~sse_specification __resource_id =
  let __resource_type = "aws_verifiedaccess_endpoint" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_verifiedaccess_endpoint __resource);
  ()
