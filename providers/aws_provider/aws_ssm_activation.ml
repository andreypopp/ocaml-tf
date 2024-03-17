(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssm_activation = {
  description : string prop option; [@option]  (** description *)
  expiration_date : string prop option; [@option]
      (** expiration_date *)
  iam_role : string prop;  (** iam_role *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  registration_limit : float prop option; [@option]
      (** registration_limit *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_ssm_activation *)

let aws_ssm_activation ?description ?expiration_date ?id ?name
    ?registration_limit ?tags ?tags_all ~iam_role __resource_id =
  let __resource_type = "aws_ssm_activation" in
  let __resource =
    {
      description;
      expiration_date;
      iam_role;
      id;
      name;
      registration_limit;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssm_activation __resource);
  ()
