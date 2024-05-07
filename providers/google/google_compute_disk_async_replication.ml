(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type secondary_disk = { disk : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : secondary_disk) -> ()

let yojson_of_secondary_disk =
  (function
   | { disk = v_disk } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_disk in
         ("disk", arg) :: bnds
       in
       `Assoc bnds
    : secondary_disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secondary_disk

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

type google_compute_disk_async_replication = {
  id : string prop option; [@option]
  primary_disk : string prop;
  secondary_disk : secondary_disk list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_disk_async_replication) -> ()

let yojson_of_google_compute_disk_async_replication =
  (function
   | {
       id = v_id;
       primary_disk = v_primary_disk;
       secondary_disk = v_secondary_disk;
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
           yojson_of_list yojson_of_secondary_disk v_secondary_disk
         in
         ("secondary_disk", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_primary_disk in
         ("primary_disk", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_disk_async_replication ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_disk_async_replication

[@@@deriving.end]

let secondary_disk ~disk () : secondary_disk = { disk }
let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_disk_async_replication ?id ?timeouts ~primary_disk
    ~secondary_disk () : google_compute_disk_async_replication =
  { id; primary_disk; secondary_disk; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  primary_disk : string prop;
}

let make ?id ?timeouts ~primary_disk ~secondary_disk __id =
  let __type = "google_compute_disk_async_replication" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       primary_disk = Prop.computed __type __id "primary_disk";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_disk_async_replication
        (google_compute_disk_async_replication ?id ?timeouts
           ~primary_disk ~secondary_disk ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~primary_disk ~secondary_disk
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~primary_disk ~secondary_disk __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
