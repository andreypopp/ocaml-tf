(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_macie2_account = {
  finding_publishing_frequency: string  prop option; [@option] (** finding_publishing_frequency *)
  id: string  prop option; [@option] (** id *)
  status: string  prop option; [@option] (** status *)
} [@@deriving yojson_of]
(** aws_macie2_account *)

type t = {
  created_at: string prop;
  finding_publishing_frequency: string prop;
  id: string prop;
  service_role: string prop;
  status: string prop;
  updated_at: string prop;
}

let aws_macie2_account ?finding_publishing_frequency ?id ?status    __resource_id =
  let __resource_type = "aws_macie2_account" in
  let __resource = ({
    finding_publishing_frequency;
    id;
    status;
  } : aws_macie2_account) in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_macie2_account __resource);
  let __resource_attributes = ({
    created_at = Prop.computed __resource_type __resource_id "created_at";
    finding_publishing_frequency = Prop.computed __resource_type __resource_id "finding_publishing_frequency";
    id = Prop.computed __resource_type __resource_id "id";
    service_role = Prop.computed __resource_type __resource_id "service_role";
    status = Prop.computed __resource_type __resource_id "status";
    updated_at = Prop.computed __resource_type __resource_id "updated_at";
  } : t) in
  __resource_attributes;;

