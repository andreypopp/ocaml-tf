(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type bigquery_dataset = unit [@@deriving_inline yojson_of]

let _ = fun (_ : bigquery_dataset) -> ()

let yojson_of_bigquery_dataset =
  (yojson_of_unit
    : bigquery_dataset -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bigquery_dataset

[@@@deriving.end]

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

type google_logging_linked_dataset = {
  bucket : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  link_id : string prop;
  location : string prop option; [@option]
  parent : string prop option; [@option]
  bigquery_dataset : bigquery_dataset list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_logging_linked_dataset) -> ()

let yojson_of_google_logging_linked_dataset =
  (function
   | {
       bucket = v_bucket;
       description = v_description;
       id = v_id;
       link_id = v_link_id;
       location = v_location;
       parent = v_parent;
       bigquery_dataset = v_bigquery_dataset;
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
         let arg =
           yojson_of_list yojson_of_bigquery_dataset
             v_bigquery_dataset
         in
         ("bigquery_dataset", arg) :: bnds
       in
       let bnds =
         match v_parent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parent", arg in
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
         let arg = yojson_of_prop yojson_of_string v_link_id in
         ("link_id", arg) :: bnds
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : google_logging_linked_dataset ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_logging_linked_dataset

[@@@deriving.end]

let bigquery_dataset () = ()
let timeouts ?create ?delete () : timeouts = { create; delete }

let google_logging_linked_dataset ?description ?id ?location ?parent
    ?(bigquery_dataset = []) ?timeouts ~bucket ~link_id () :
    google_logging_linked_dataset =
  {
    bucket;
    description;
    id;
    link_id;
    location;
    parent;
    bigquery_dataset;
    timeouts;
  }

type t = {
  tf_name : string;
  bucket : string prop;
  create_time : string prop;
  description : string prop;
  id : string prop;
  lifecycle_state : string prop;
  link_id : string prop;
  location : string prop;
  name : string prop;
  parent : string prop;
}

let make ?description ?id ?location ?parent ?(bigquery_dataset = [])
    ?timeouts ~bucket ~link_id __id =
  let __type = "google_logging_linked_dataset" in
  let __attrs =
    ({
       tf_name = __id;
       bucket = Prop.computed __type __id "bucket";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       lifecycle_state = Prop.computed __type __id "lifecycle_state";
       link_id = Prop.computed __type __id "link_id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_logging_linked_dataset
        (google_logging_linked_dataset ?description ?id ?location
           ?parent ~bigquery_dataset ?timeouts ~bucket ~link_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?location ?parent
    ?(bigquery_dataset = []) ?timeouts ~bucket ~link_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?location ?parent ~bigquery_dataset
      ?timeouts ~bucket ~link_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
