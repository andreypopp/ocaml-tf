(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_evidently_segment = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  pattern : string prop;  (** pattern *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_evidently_segment *)

type t = {
  arn : string prop;
  created_time : string prop;
  description : string prop;
  experiment_count : float prop;
  id : string prop;
  last_updated_time : string prop;
  launch_count : float prop;
  name : string prop;
  pattern : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_evidently_segment ?description ?id ?tags ?tags_all ~name
    ~pattern __resource_id =
  let __resource_type = "aws_evidently_segment" in
  let __resource =
    ({ description; id; name; pattern; tags; tags_all }
      : aws_evidently_segment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_evidently_segment __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       created_time =
         Prop.computed __resource_type __resource_id "created_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       experiment_count =
         Prop.computed __resource_type __resource_id
           "experiment_count";
       id = Prop.computed __resource_type __resource_id "id";
       last_updated_time =
         Prop.computed __resource_type __resource_id
           "last_updated_time";
       launch_count =
         Prop.computed __resource_type __resource_id "launch_count";
       name = Prop.computed __resource_type __resource_id "name";
       pattern =
         Prop.computed __resource_type __resource_id "pattern";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
