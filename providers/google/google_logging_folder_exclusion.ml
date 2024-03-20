(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_logging_folder_exclusion = {
  description : string prop option; [@option]
  disabled : bool prop option; [@option]
  filter : string prop;
  folder : string prop;
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_logging_folder_exclusion) -> ()

let yojson_of_google_logging_folder_exclusion =
  (function
   | {
       description = v_description;
       disabled = v_disabled;
       filter = v_filter;
       folder = v_folder;
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_folder in
         ("folder", arg) :: bnds
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
    : google_logging_folder_exclusion ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_logging_folder_exclusion

[@@@deriving.end]

let google_logging_folder_exclusion ?description ?disabled ?id
    ~filter ~folder ~name () : google_logging_folder_exclusion =
  { description; disabled; filter; folder; id; name }

type t = {
  description : string prop;
  disabled : bool prop;
  filter : string prop;
  folder : string prop;
  id : string prop;
  name : string prop;
}

let make ?description ?disabled ?id ~filter ~folder ~name __id =
  let __type = "google_logging_folder_exclusion" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       disabled = Prop.computed __type __id "disabled";
       filter = Prop.computed __type __id "filter";
       folder = Prop.computed __type __id "folder";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_logging_folder_exclusion
        (google_logging_folder_exclusion ?description ?disabled ?id
           ~filter ~folder ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?disabled ?id ~filter ~folder
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?disabled ?id ~filter ~folder ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
