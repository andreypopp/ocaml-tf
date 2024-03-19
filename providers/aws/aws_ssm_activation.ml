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
    ?registration_limit ?tags ?tags_all ~iam_role () :
    aws_ssm_activation =
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

type t = {
  activation_code : string prop;
  description : string prop;
  expiration_date : string prop;
  expired : bool prop;
  iam_role : string prop;
  id : string prop;
  name : string prop;
  registration_count : float prop;
  registration_limit : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?description ?expiration_date ?id ?name
    ?registration_limit ?tags ?tags_all ~iam_role __resource_id =
  let __resource_type = "aws_ssm_activation" in
  let __resource =
    aws_ssm_activation ?description ?expiration_date ?id ?name
      ?registration_limit ?tags ?tags_all ~iam_role ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssm_activation __resource);
  let __resource_attributes =
    ({
       activation_code =
         Prop.computed __resource_type __resource_id
           "activation_code";
       description =
         Prop.computed __resource_type __resource_id "description";
       expiration_date =
         Prop.computed __resource_type __resource_id
           "expiration_date";
       expired =
         Prop.computed __resource_type __resource_id "expired";
       iam_role =
         Prop.computed __resource_type __resource_id "iam_role";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       registration_count =
         Prop.computed __resource_type __resource_id
           "registration_count";
       registration_limit =
         Prop.computed __resource_type __resource_id
           "registration_limit";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
