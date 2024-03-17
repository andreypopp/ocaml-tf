(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_container_service__private_registry_access__ecr_image_puller_role = {
  is_active : bool option; [@option]  (** is_active *)
  principal_arn : string;  (** principal_arn *)
}
[@@deriving yojson_of]
(** aws_lightsail_container_service__private_registry_access__ecr_image_puller_role *)

type aws_lightsail_container_service__private_registry_access = {
  ecr_image_puller_role :
    aws_lightsail_container_service__private_registry_access__ecr_image_puller_role
    list;
}
[@@deriving yojson_of]
(** aws_lightsail_container_service__private_registry_access *)

type aws_lightsail_container_service__public_domain_names__certificate = {
  certificate_name : string;  (** certificate_name *)
  domain_names : string list;  (** domain_names *)
}
[@@deriving yojson_of]
(** aws_lightsail_container_service__public_domain_names__certificate *)

type aws_lightsail_container_service__public_domain_names = {
  certificate :
    aws_lightsail_container_service__public_domain_names__certificate
    list;
}
[@@deriving yojson_of]
(** aws_lightsail_container_service__public_domain_names *)

type aws_lightsail_container_service__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_lightsail_container_service__timeouts *)

type aws_lightsail_container_service = {
  id : string option; [@option]  (** id *)
  is_disabled : bool option; [@option]  (** is_disabled *)
  name : string;  (** name *)
  power : string;  (** power *)
  scale : float;  (** scale *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  private_registry_access :
    aws_lightsail_container_service__private_registry_access list;
  public_domain_names :
    aws_lightsail_container_service__public_domain_names list;
  timeouts : aws_lightsail_container_service__timeouts option;
}
[@@deriving yojson_of]
(** aws_lightsail_container_service *)

let aws_lightsail_container_service ?id ?is_disabled ?tags ?tags_all
    ?timeouts ~name ~power ~scale ~private_registry_access
    ~public_domain_names __resource_id =
  let __resource_type = "aws_lightsail_container_service" in
  let __resource =
    {
      id;
      is_disabled;
      name;
      power;
      scale;
      tags;
      tags_all;
      private_registry_access;
      public_domain_names;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_container_service __resource);
  ()
