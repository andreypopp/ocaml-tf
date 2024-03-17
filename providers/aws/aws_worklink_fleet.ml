(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_worklink_fleet__identity_provider = {
  saml_metadata : string prop;  (** saml_metadata *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_worklink_fleet__identity_provider *)

type aws_worklink_fleet__network = {
  security_group_ids : string prop list;  (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_worklink_fleet__network *)

type aws_worklink_fleet = {
  audit_stream_arn : string prop option; [@option]
      (** audit_stream_arn *)
  device_ca_certificate : string prop option; [@option]
      (** device_ca_certificate *)
  display_name : string prop option; [@option]  (** display_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  optimize_for_end_user_location : bool prop option; [@option]
      (** optimize_for_end_user_location *)
  identity_provider : aws_worklink_fleet__identity_provider list;
  network : aws_worklink_fleet__network list;
}
[@@deriving yojson_of]
(** aws_worklink_fleet *)

type t = {
  arn : string prop;
  audit_stream_arn : string prop;
  company_code : string prop;
  created_time : string prop;
  device_ca_certificate : string prop;
  display_name : string prop;
  id : string prop;
  last_updated_time : string prop;
  name : string prop;
  optimize_for_end_user_location : bool prop;
}

let aws_worklink_fleet ?audit_stream_arn ?device_ca_certificate
    ?display_name ?id ?optimize_for_end_user_location ~name
    ~identity_provider ~network __resource_id =
  let __resource_type = "aws_worklink_fleet" in
  let __resource =
    ({
       audit_stream_arn;
       device_ca_certificate;
       display_name;
       id;
       name;
       optimize_for_end_user_location;
       identity_provider;
       network;
     }
      : aws_worklink_fleet)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_worklink_fleet __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       audit_stream_arn =
         Prop.computed __resource_type __resource_id
           "audit_stream_arn";
       company_code =
         Prop.computed __resource_type __resource_id "company_code";
       created_time =
         Prop.computed __resource_type __resource_id "created_time";
       device_ca_certificate =
         Prop.computed __resource_type __resource_id
           "device_ca_certificate";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       last_updated_time =
         Prop.computed __resource_type __resource_id
           "last_updated_time";
       name = Prop.computed __resource_type __resource_id "name";
       optimize_for_end_user_location =
         Prop.computed __resource_type __resource_id
           "optimize_for_end_user_location";
     }
      : t)
  in
  __resource_attributes
