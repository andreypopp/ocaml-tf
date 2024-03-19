(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_verifiedaccess_instance_trust_provider_attachment = {
  id : string prop option; [@option]  (** id *)
  verifiedaccess_instance_id : string prop;
      (** verifiedaccess_instance_id *)
  verifiedaccess_trust_provider_id : string prop;
      (** verifiedaccess_trust_provider_id *)
}
[@@deriving yojson_of]
(** aws_verifiedaccess_instance_trust_provider_attachment *)

let aws_verifiedaccess_instance_trust_provider_attachment ?id
    ~verifiedaccess_instance_id ~verifiedaccess_trust_provider_id ()
    : aws_verifiedaccess_instance_trust_provider_attachment =
  {
    id;
    verifiedaccess_instance_id;
    verifiedaccess_trust_provider_id;
  }

type t = {
  id : string prop;
  verifiedaccess_instance_id : string prop;
  verifiedaccess_trust_provider_id : string prop;
}

let register ?tf_module ?id ~verifiedaccess_instance_id
    ~verifiedaccess_trust_provider_id __resource_id =
  let __resource_type =
    "aws_verifiedaccess_instance_trust_provider_attachment"
  in
  let __resource =
    aws_verifiedaccess_instance_trust_provider_attachment ?id
      ~verifiedaccess_instance_id ~verifiedaccess_trust_provider_id
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_verifiedaccess_instance_trust_provider_attachment
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       verifiedaccess_instance_id =
         Prop.computed __resource_type __resource_id
           "verifiedaccess_instance_id";
       verifiedaccess_trust_provider_id =
         Prop.computed __resource_type __resource_id
           "verifiedaccess_trust_provider_id";
     }
      : t)
  in
  __resource_attributes
