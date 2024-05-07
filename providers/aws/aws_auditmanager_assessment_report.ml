(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_auditmanager_assessment_report = {
  assessment_id : string prop;
  description : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_auditmanager_assessment_report) -> ()

let yojson_of_aws_auditmanager_assessment_report =
  (function
   | {
       assessment_id = v_assessment_id;
       description = v_description;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_assessment_id in
         ("assessment_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_auditmanager_assessment_report ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_auditmanager_assessment_report

[@@@deriving.end]

let aws_auditmanager_assessment_report ?description ~assessment_id
    ~name () : aws_auditmanager_assessment_report =
  { assessment_id; description; name }

type t = {
  tf_name : string;
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
       tf_name = __id;
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
