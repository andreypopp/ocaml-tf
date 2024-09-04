(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type google_tags_tag_key = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  parent : string prop;
  purpose : string prop option; [@option]
  purpose_data : string prop Tf_core.assoc option; [@option]
  short_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_tags_tag_key) -> ()

let yojson_of_google_tags_tag_key =
  (function
   | {
       description = v_description;
       id = v_id;
       parent = v_parent;
       purpose = v_purpose;
       purpose_data = v_purpose_data;
       short_name = v_short_name;
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
         let arg = yojson_of_prop yojson_of_string v_short_name in
         ("short_name", arg) :: bnds
       in
       let bnds =
         match v_purpose_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "purpose_data", arg in
             bnd :: bnds
       in
       let bnds =
         match v_purpose with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "purpose", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_tags_tag_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_tags_tag_key

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_tags_tag_key ?description ?id ?purpose ?purpose_data
    ?timeouts ~parent ~short_name () : google_tags_tag_key =
  {
    description;
    id;
    parent;
    purpose;
    purpose_data;
    short_name;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  namespaced_name : string prop;
  parent : string prop;
  purpose : string prop;
  purpose_data : string Tf_core.assoc prop;
  short_name : string prop;
  update_time : string prop;
}

let make ?description ?id ?purpose ?purpose_data ?timeouts ~parent
    ~short_name __id =
  let __type = "google_tags_tag_key" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespaced_name = Prop.computed __type __id "namespaced_name";
       parent = Prop.computed __type __id "parent";
       purpose = Prop.computed __type __id "purpose";
       purpose_data = Prop.computed __type __id "purpose_data";
       short_name = Prop.computed __type __id "short_name";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_tags_tag_key
        (google_tags_tag_key ?description ?id ?purpose ?purpose_data
           ?timeouts ~parent ~short_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?purpose ?purpose_data
    ?timeouts ~parent ~short_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?purpose ?purpose_data ?timeouts ~parent
      ~short_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
