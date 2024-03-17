(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ssm_activation = {
  description : string option; [@option]  (** description *)
  iam_role : string;  (** iam_role *)
  name : string option; [@option]  (** name *)
  registration_limit : float option; [@option]
      (** registration_limit *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_ssm_activation *)

let aws_ssm_activation ?description ?name ?registration_limit ?tags
    ~iam_role __resource_id =
  let __resource_type = "aws_ssm_activation" in
  let __resource =
    { description; iam_role; name; registration_limit; tags }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssm_activation __resource);
  ()
