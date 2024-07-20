(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type failure_reasons = { code : string prop; message : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : failure_reasons) -> ()

let yojson_of_failure_reasons =
  (function
   | { code = v_code; message = v_message } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_message in
         ("message", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_code in
         ("code", arg) :: bnds
       in
       `Assoc bnds
    : failure_reasons -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_failure_reasons

[@@@deriving.end]

type aws_datazone_project = {
  description : string prop option; [@option]
  domain_identifier : string prop;
  glossary_terms : string prop list option; [@option]
  name : string prop;
  skip_deletion_check : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_datazone_project) -> ()

let yojson_of_aws_datazone_project =
  (function
   | {
       description = v_description;
       domain_identifier = v_domain_identifier;
       glossary_terms = v_glossary_terms;
       name = v_name;
       skip_deletion_check = v_skip_deletion_check;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_skip_deletion_check with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_deletion_check", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_glossary_terms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "glossary_terms", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_domain_identifier
         in
         ("domain_identifier", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_datazone_project -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_datazone_project

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_datazone_project ?description ?glossary_terms
    ?skip_deletion_check ?timeouts ~domain_identifier ~name () :
    aws_datazone_project =
  {
    description;
    domain_identifier;
    glossary_terms;
    name;
    skip_deletion_check;
    timeouts;
  }

type t = {
  tf_name : string;
  created_at : string prop;
  created_by : string prop;
  description : string prop;
  domain_identifier : string prop;
  failure_reasons : failure_reasons list prop;
  glossary_terms : string list prop;
  id : string prop;
  last_updated_at : string prop;
  name : string prop;
  project_status : string prop;
  skip_deletion_check : bool prop;
}

let make ?description ?glossary_terms ?skip_deletion_check ?timeouts
    ~domain_identifier ~name __id =
  let __type = "aws_datazone_project" in
  let __attrs =
    ({
       tf_name = __id;
       created_at = Prop.computed __type __id "created_at";
       created_by = Prop.computed __type __id "created_by";
       description = Prop.computed __type __id "description";
       domain_identifier =
         Prop.computed __type __id "domain_identifier";
       failure_reasons = Prop.computed __type __id "failure_reasons";
       glossary_terms = Prop.computed __type __id "glossary_terms";
       id = Prop.computed __type __id "id";
       last_updated_at = Prop.computed __type __id "last_updated_at";
       name = Prop.computed __type __id "name";
       project_status = Prop.computed __type __id "project_status";
       skip_deletion_check =
         Prop.computed __type __id "skip_deletion_check";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_datazone_project
        (aws_datazone_project ?description ?glossary_terms
           ?skip_deletion_check ?timeouts ~domain_identifier ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?glossary_terms
    ?skip_deletion_check ?timeouts ~domain_identifier ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?glossary_terms ?skip_deletion_check ?timeouts
      ~domain_identifier ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
