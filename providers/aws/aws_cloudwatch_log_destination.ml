(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_log_destination = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  role_arn : string prop;  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target_arn : string prop;  (** target_arn *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_log_destination *)

let aws_cloudwatch_log_destination ?id ?tags ?tags_all ~name
    ~role_arn ~target_arn () : aws_cloudwatch_log_destination =
  { id; name; role_arn; tags; tags_all; target_arn }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_arn : string prop;
}

let register ?tf_module ?id ?tags ?tags_all ~name ~role_arn
    ~target_arn __resource_id =
  let __resource_type = "aws_cloudwatch_log_destination" in
  let __resource =
    aws_cloudwatch_log_destination ?id ?tags ?tags_all ~name
      ~role_arn ~target_arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_log_destination __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       target_arn =
         Prop.computed __resource_type __resource_id "target_arn";
     }
      : t)
  in
  __resource_attributes
