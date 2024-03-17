(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_pinpoint_adm_channel = {
  application_id : string prop;  (** application_id *)
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_pinpoint_adm_channel *)

type t = {
  application_id : string prop;
  client_id : string prop;
  client_secret : string prop;
  enabled : bool prop;
  id : string prop;
}

let aws_pinpoint_adm_channel ?enabled ?id ~application_id ~client_id
    ~client_secret __resource_id =
  let __resource_type = "aws_pinpoint_adm_channel" in
  let __resource =
    ({ application_id; client_id; client_secret; enabled; id }
      : aws_pinpoint_adm_channel)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_pinpoint_adm_channel __resource);
  let __resource_attributes =
    ({
       application_id =
         Prop.computed __resource_type __resource_id "application_id";
       client_id =
         Prop.computed __resource_type __resource_id "client_id";
       client_secret =
         Prop.computed __resource_type __resource_id "client_secret";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
