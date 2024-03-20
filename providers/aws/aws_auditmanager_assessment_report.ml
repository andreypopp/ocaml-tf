(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_auditmanager_assessment_report = {
  assessment_id : string prop;  (** assessment_id *)
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_auditmanager_assessment_report *)

let aws_auditmanager_assessment_report ?description ~assessment_id
    ~name () : aws_auditmanager_assessment_report =
  { assessment_id; description; name }

type t = {
  assessment_id : string prop;
  author : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
}

let make ?description ~assessment_id ~name __id =
  let __type = "aws_auditmanager_assessment_report" in
  let __attrs =
    ({
       assessment_id = Prop.computed __type __id "assessment_id";
       author = Prop.computed __type __id "author";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_auditmanager_assessment_report
        (aws_auditmanager_assessment_report ?description
           ~assessment_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ~assessment_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ~assessment_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
