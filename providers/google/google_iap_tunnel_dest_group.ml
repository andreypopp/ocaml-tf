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

type google_iap_tunnel_dest_group = {
  cidrs : string prop list option; [@option]
  fqdns : string prop list option; [@option]
  group_name : string prop;
  id : string prop option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_iap_tunnel_dest_group) -> ()

let yojson_of_google_iap_tunnel_dest_group =
  (function
   | {
       cidrs = v_cidrs;
       fqdns = v_fqdns;
       group_name = v_group_name;
       id = v_id;
       project = v_project;
       region = v_region;
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
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_group_name in
         ("group_name", arg) :: bnds
       in
       let bnds =
         match v_fqdns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "fqdns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cidrs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "cidrs", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_iap_tunnel_dest_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_iap_tunnel_dest_group

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_iap_tunnel_dest_group ?cidrs ?fqdns ?id ?project ?region
    ?timeouts ~group_name () : google_iap_tunnel_dest_group =
  { cidrs; fqdns; group_name; id; project; region; timeouts }

type t = {
  tf_name : string;
  cidrs : string list prop;
  fqdns : string list prop;
  group_name : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
}

let make ?cidrs ?fqdns ?id ?project ?region ?timeouts ~group_name
    __id =
  let __type = "google_iap_tunnel_dest_group" in
  let __attrs =
    ({
       tf_name = __id;
       cidrs = Prop.computed __type __id "cidrs";
       fqdns = Prop.computed __type __id "fqdns";
       group_name = Prop.computed __type __id "group_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_iap_tunnel_dest_group
        (google_iap_tunnel_dest_group ?cidrs ?fqdns ?id ?project
           ?region ?timeouts ~group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?cidrs ?fqdns ?id ?project ?region ?timeouts
    ~group_name __id =
  let (r : _ Tf_core.resource) =
    make ?cidrs ?fqdns ?id ?project ?region ?timeouts ~group_name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
