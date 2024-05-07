(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_logging_project_exclusion = {
  description : string prop option; [@option]
  disabled : bool prop option; [@option]
  filter : string prop;
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_logging_project_exclusion) -> ()

let yojson_of_google_logging_project_exclusion =
  (function
   | {
       description = v_description;
       disabled = v_disabled;
       filter = v_filter;
       id = v_id;
       name = v_name;
       project = v_project;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_filter in
         ("filter", arg) :: bnds
       in
       let bnds =
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
             bnd :: bnds
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
    : google_logging_project_exclusion ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_logging_project_exclusion

[@@@deriving.end]

let google_logging_project_exclusion ?description ?disabled ?id
    ?project ~filter ~name () : google_logging_project_exclusion =
  { description; disabled; filter; id; name; project }

type t = {
  tf_name : string;
  description : string prop;
  disabled : bool prop;
  filter : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
}

let make ?description ?disabled ?id ?project ~filter ~name __id =
  let __type = "google_logging_project_exclusion" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       disabled = Prop.computed __type __id "disabled";
       filter = Prop.computed __type __id "filter";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_logging_project_exclusion
        (google_logging_project_exclusion ?description ?disabled ?id
           ?project ~filter ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?disabled ?id ?project ~filter
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?disabled ?id ?project ~filter ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
