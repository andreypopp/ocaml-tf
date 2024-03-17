(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_auditmanager_assessment_report = {
  assessment_id : string prop;  (** assessment_id *)
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_auditmanager_assessment_report *)

type t = {
  assessment_id : string prop;
  author : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
}

let aws_auditmanager_assessment_report ?description ~assessment_id
    ~name __resource_id =
  let __resource_type = "aws_auditmanager_assessment_report" in
  let __resource =
    ({ assessment_id; description; name }
      : aws_auditmanager_assessment_report)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_auditmanager_assessment_report __resource);
  let __resource_attributes =
    ({
       assessment_id =
         Prop.computed __resource_type __resource_id "assessment_id";
       author = Prop.computed __resource_type __resource_id "author";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       status = Prop.computed __resource_type __resource_id "status";
     }
      : t)
  in
  __resource_attributes
