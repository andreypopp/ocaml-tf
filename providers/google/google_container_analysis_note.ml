(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type attestation_authority__hint = {
  human_readable_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : attestation_authority__hint) -> ()

let yojson_of_attestation_authority__hint =
  (function
   | { human_readable_name = v_human_readable_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_human_readable_name
         in
         ("human_readable_name", arg) :: bnds
       in
       `Assoc bnds
    : attestation_authority__hint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attestation_authority__hint

[@@@deriving.end]

type attestation_authority = {
  hint : attestation_authority__hint list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : attestation_authority) -> ()

let yojson_of_attestation_authority =
  (function
   | { hint = v_hint } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_hint then bnds
         else
           let arg =
             (yojson_of_list yojson_of_attestation_authority__hint)
               v_hint
           in
           let bnd = "hint", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : attestation_authority -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attestation_authority

[@@@deriving.end]

type related_url = {
  label : string prop option; [@option]
  url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : related_url) -> ()

let yojson_of_related_url =
  (function
   | { label = v_label; url = v_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         match v_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : related_url -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_related_url

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
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

type google_container_analysis_note = {
  expiration_time : string prop option; [@option]
  id : string prop option; [@option]
  long_description : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  related_note_names : string prop list option; [@option]
  short_description : string prop option; [@option]
  attestation_authority : attestation_authority list;
      [@default []] [@yojson_drop_default ( = )]
  related_url : related_url list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_container_analysis_note) -> ()

let yojson_of_google_container_analysis_note =
  (function
   | {
       expiration_time = v_expiration_time;
       id = v_id;
       long_description = v_long_description;
       name = v_name;
       project = v_project;
       related_note_names = v_related_note_names;
       short_description = v_short_description;
       attestation_authority = v_attestation_authority;
       related_url = v_related_url;
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
         if [] = v_related_url then bnds
         else
           let arg =
             (yojson_of_list yojson_of_related_url) v_related_url
           in
           let bnd = "related_url", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_attestation_authority then bnds
         else
           let arg =
             (yojson_of_list yojson_of_attestation_authority)
               v_attestation_authority
           in
           let bnd = "attestation_authority", arg in
           bnd :: bnds
       in
       let bnds =
         match v_short_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "short_description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_related_note_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "related_note_names", arg in
             bnd :: bnds
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
         match v_long_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "long_description", arg in
             bnd :: bnds
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
         match v_expiration_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expiration_time", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_container_analysis_note ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_container_analysis_note

[@@@deriving.end]

let attestation_authority__hint ~human_readable_name () :
    attestation_authority__hint =
  { human_readable_name }

let attestation_authority ~hint () : attestation_authority = { hint }
let related_url ?label ~url () : related_url = { label; url }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_container_analysis_note ?expiration_time ?id
    ?long_description ?project ?related_note_names ?short_description
    ?timeouts ~name ~attestation_authority ~related_url () :
    google_container_analysis_note =
  {
    expiration_time;
    id;
    long_description;
    name;
    project;
    related_note_names;
    short_description;
    attestation_authority;
    related_url;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  expiration_time : string prop;
  id : string prop;
  kind : string prop;
  long_description : string prop;
  name : string prop;
  project : string prop;
  related_note_names : string list prop;
  short_description : string prop;
  update_time : string prop;
}

let make ?expiration_time ?id ?long_description ?project
    ?related_note_names ?short_description ?timeouts ~name
    ~attestation_authority ~related_url __id =
  let __type = "google_container_analysis_note" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       expiration_time = Prop.computed __type __id "expiration_time";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       long_description =
         Prop.computed __type __id "long_description";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       related_note_names =
         Prop.computed __type __id "related_note_names";
       short_description =
         Prop.computed __type __id "short_description";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_container_analysis_note
        (google_container_analysis_note ?expiration_time ?id
           ?long_description ?project ?related_note_names
           ?short_description ?timeouts ~name ~attestation_authority
           ~related_url ());
    attrs = __attrs;
  }

let register ?tf_module ?expiration_time ?id ?long_description
    ?project ?related_note_names ?short_description ?timeouts ~name
    ~attestation_authority ~related_url __id =
  let (r : _ Tf_core.resource) =
    make ?expiration_time ?id ?long_description ?project
      ?related_note_names ?short_description ?timeouts ~name
      ~attestation_authority ~related_url __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
