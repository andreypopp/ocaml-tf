(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_verifiedaccess_endpoint__load_balancer_options = {
  load_balancer_arn : string option; [@option]
      (** load_balancer_arn *)
  port : float option; [@option]  (** port *)
  protocol : string option; [@option]  (** protocol *)
  subnet_ids : string list option; [@option]  (** subnet_ids *)
}
[@@deriving yojson_of]
(** aws_verifiedaccess_endpoint__load_balancer_options *)

type aws_verifiedaccess_endpoint__network_interface_options = {
  network_interface_id : string option; [@option]
      (** network_interface_id *)
  port : float option; [@option]  (** port *)
  protocol : string option; [@option]  (** protocol *)
}
[@@deriving yojson_of]
(** aws_verifiedaccess_endpoint__network_interface_options *)

type aws_verifiedaccess_endpoint__sse_specification = {
  customer_managed_key_enabled : bool option; [@option]
      (** customer_managed_key_enabled *)
  kms_key_arn : string option; [@option]  (** kms_key_arn *)
}
[@@deriving yojson_of]
(** aws_verifiedaccess_endpoint__sse_specification *)

type aws_verifiedaccess_endpoint__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_verifiedaccess_endpoint__timeouts *)

type aws_verifiedaccess_endpoint = {
  application_domain : string;  (** application_domain *)
  attachment_type : string;  (** attachment_type *)
  description : string option; [@option]  (** description *)
  domain_certificate_arn : string;  (** domain_certificate_arn *)
  endpoint_domain_prefix : string;  (** endpoint_domain_prefix *)
  endpoint_type : string;  (** endpoint_type *)
  id : string option; [@option]  (** id *)
  policy_document : string option; [@option]  (** policy_document *)
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  verified_access_group_id : string;  (** verified_access_group_id *)
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
