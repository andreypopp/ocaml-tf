(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_worklink_fleet__identity_provider = {
  saml_metadata : string;  (** saml_metadata *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_worklink_fleet__identity_provider *)

type aws_worklink_fleet__network = {
  security_group_ids : string list;  (** security_group_ids *)
  subnet_ids : string list;  (** subnet_ids *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_worklink_fleet__network *)

type aws_worklink_fleet = {
  audit_stream_arn : string option; [@option]
      (** audit_stream_arn *)
  device_ca_certificate : string option; [@option]
      (** device_ca_certificate *)
  display_name : string option; [@option]  (** display_name *)
  name : string;  (** name *)
  optimize_for_end_user_location : bool option; [@option]
      (** optimize_for_end_user_location *)
  identity_provider : aws_worklink_fleet__identity_provider list;
  network : aws_worklink_fleet__network list;
}
[@@deriving yojson_of]
(** aws_worklink_fleet *)

let aws_worklink_fleet ?audit_stream_arn ?device_ca_certificate
    ?display_name ?optimize_for_end_user_location ~name
    ~identity_provider ~network __resource_id =
  let __resource_type = "aws_worklink_fleet" in
  let __resource =
    {
      audit_stream_arn;
      device_ca_certificate;
      display_name;
      name;
      optimize_for_end_user_location;
      identity_provider;
      network;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_worklink_fleet __resource);
  ()
