(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = { name : string prop; values : string prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_ebs_snapshot_ids = {
  id : string prop option; [@option]
  owners : string prop list option; [@option]
  restorable_by_user_ids : string prop list option; [@option]
  filter : filter list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ebs_snapshot_ids) -> ()

let yojson_of_aws_ebs_snapshot_ids =
  (function
   | {
       id = v_id;
       owners = v_owners;
       restorable_by_user_ids = v_restorable_by_user_ids;
       filter = v_filter;
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
         let arg = yojson_of_list yojson_of_filter v_filter in
         ("filter", arg) :: bnds
       in
       let bnds =
         match v_restorable_by_user_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "restorable_by_user_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_owners with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "owners", arg in
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
       `Assoc bnds
    : aws_ebs_snapshot_ids -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ebs_snapshot_ids

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }
let timeouts ?read () : timeouts = { read }

let aws_ebs_snapshot_ids ?id ?owners ?restorable_by_user_ids
    ?timeouts ~filter () : aws_ebs_snapshot_ids =
  { id; owners; restorable_by_user_ids; filter; timeouts }

type t = {
  id : string prop;
  ids : string list prop;
  owners : string list prop;
  restorable_by_user_ids : string list prop;
}

let make ?id ?owners ?restorable_by_user_ids ?timeouts ~filter __id =
  let __type = "aws_ebs_snapshot_ids" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       ids = Prop.computed __type __id "ids";
       owners = Prop.computed __type __id "owners";
       restorable_by_user_ids =
         Prop.computed __type __id "restorable_by_user_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ebs_snapshot_ids
        (aws_ebs_snapshot_ids ?id ?owners ?restorable_by_user_ids
           ?timeouts ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?owners ?restorable_by_user_ids ?timeouts
    ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?id ?owners ?restorable_by_user_ids ?timeouts ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
