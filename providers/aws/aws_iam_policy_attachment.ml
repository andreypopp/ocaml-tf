(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_policy_attachment = {
  groups : string prop list option; [@option]  (** groups *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  policy_arn : string prop;  (** policy_arn *)
  roles : string prop list option; [@option]  (** roles *)
  users : string prop list option; [@option]  (** users *)
}
[@@deriving yojson_of]
(** aws_iam_policy_attachment *)

let aws_iam_policy_attachment ?groups ?id ?roles ?users ~name
    ~policy_arn () : aws_iam_policy_attachment =
  { groups; id; name; policy_arn; roles; users }

type t = {
  groups : string list prop;
  id : string prop;
  name : string prop;
  policy_arn : string prop;
  roles : string list prop;
  users : string list prop;
}

let register ?tf_module ?groups ?id ?roles ?users ~name ~policy_arn
    __resource_id =
  let __resource_type = "aws_iam_policy_attachment" in
  let __resource =
    aws_iam_policy_attachment ?groups ?id ?roles ?users ~name
      ~policy_arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_policy_attachment __resource);
  let __resource_attributes =
    ({
       groups = Prop.computed __resource_type __resource_id "groups";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       policy_arn =
         Prop.computed __resource_type __resource_id "policy_arn";
       roles = Prop.computed __resource_type __resource_id "roles";
       users = Prop.computed __resource_type __resource_id "users";
     }
      : t)
  in
  __resource_attributes
