(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type required_aspects = {
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : required_aspects) -> ()

let yojson_of_required_aspects =
  (function
   | { type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : required_aspects -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_required_aspects

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

type google_dataplex_entry_type = {
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  entry_type_id : string prop option; [@option]
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  location : string prop option; [@option]
  platform : string prop option; [@option]
  project : string prop option; [@option]
  system : string prop option; [@option]
  type_aliases : string prop list option; [@option]
  required_aspects : required_aspects list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dataplex_entry_type) -> ()

let yojson_of_google_dataplex_entry_type =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       entry_type_id = v_entry_type_id;
       id = v_id;
       labels = v_labels;
       location = v_location;
       platform = v_platform;
       project = v_project;
       system = v_system;
       type_aliases = v_type_aliases;
       required_aspects = v_required_aspects;
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
         if Stdlib.( = ) [] v_required_aspects then bnds
         else
           let arg =
             (yojson_of_list yojson_of_required_aspects)
               v_required_aspects
           in
           let bnd = "required_aspects", arg in
           bnd :: bnds
       in
       let bnds =
         match v_type_aliases with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "type_aliases", arg in
             bnd :: bnds
       in
       let bnds =
         match v_system with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "system", arg in
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
         match v_platform with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "platform", arg in
             bnd :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "labels", arg in
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
         match v_entry_type_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "entry_type_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
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
    : google_dataplex_entry_type -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dataplex_entry_type

[@@@deriving.end]

let required_aspects ?type_ () : required_aspects = { type_ }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dataplex_entry_type ?description ?display_name
    ?entry_type_id ?id ?labels ?location ?platform ?project ?system
    ?type_aliases ?(required_aspects = []) ?timeouts () :
    google_dataplex_entry_type =
  {
    description;
    display_name;
    entry_type_id;
    id;
    labels;
    location;
    platform;
    project;
    system;
    type_aliases;
    required_aspects;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  effective_labels : string Tf_core.assoc prop;
  entry_type_id : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  platform : string prop;
  project : string prop;
  system : string prop;
  terraform_labels : string Tf_core.assoc prop;
  type_aliases : string list prop;
  uid : string prop;
  update_time : string prop;
}

let make ?description ?display_name ?entry_type_id ?id ?labels
    ?location ?platform ?project ?system ?type_aliases
    ?(required_aspects = []) ?timeouts __id =
  let __type = "google_dataplex_entry_type" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       entry_type_id = Prop.computed __type __id "entry_type_id";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       platform = Prop.computed __type __id "platform";
       project = Prop.computed __type __id "project";
       system = Prop.computed __type __id "system";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       type_aliases = Prop.computed __type __id "type_aliases";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dataplex_entry_type
        (google_dataplex_entry_type ?description ?display_name
           ?entry_type_id ?id ?labels ?location ?platform ?project
           ?system ?type_aliases ~required_aspects ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?display_name ?entry_type_id ?id
    ?labels ?location ?platform ?project ?system ?type_aliases
    ?(required_aspects = []) ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?description ?display_name ?entry_type_id ?id ?labels
      ?location ?platform ?project ?system ?type_aliases
      ~required_aspects ?timeouts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
