(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type target = {
  id : string prop;
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target) -> ()

let yojson_of_target =
  (function
   | { id = v_id; type_ = v_type_ } ->
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target

[@@@deriving.end]

type timeouts = { delete : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { delete = v_delete } ->
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
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_directory_service_shared_directory = {
  directory_id : string prop;
  id : string prop option; [@option]
  method_ : string prop option; [@option] [@key "method"]
  notes : string prop option; [@option]
  target : target list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_directory_service_shared_directory) -> ()

let yojson_of_aws_directory_service_shared_directory =
  (function
   | {
       directory_id = v_directory_id;
       id = v_id;
       method_ = v_method_;
       notes = v_notes;
       target = v_target;
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
         let arg = yojson_of_list yojson_of_target v_target in
         ("target", arg) :: bnds
       in
       let bnds =
         match v_notes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "notes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_method_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "method", arg in
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
         let arg = yojson_of_prop yojson_of_string v_directory_id in
         ("directory_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_directory_service_shared_directory ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_directory_service_shared_directory

[@@@deriving.end]

let target ?type_ ~id () : target = { id; type_ }
let timeouts ?delete () : timeouts = { delete }

let aws_directory_service_shared_directory ?id ?method_ ?notes
    ?timeouts ~directory_id ~target () :
    aws_directory_service_shared_directory =
  { directory_id; id; method_; notes; target; timeouts }

type t = {
  directory_id : string prop;
  id : string prop;
  method_ : string prop;
  notes : string prop;
  shared_directory_id : string prop;
}

let make ?id ?method_ ?notes ?timeouts ~directory_id ~target __id =
  let __type = "aws_directory_service_shared_directory" in
  let __attrs =
    ({
       directory_id = Prop.computed __type __id "directory_id";
       id = Prop.computed __type __id "id";
       method_ = Prop.computed __type __id "method";
       notes = Prop.computed __type __id "notes";
       shared_directory_id =
         Prop.computed __type __id "shared_directory_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_directory_service_shared_directory
        (aws_directory_service_shared_directory ?id ?method_ ?notes
           ?timeouts ~directory_id ~target ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?method_ ?notes ?timeouts ~directory_id
    ~target __id =
  let (r : _ Tf_core.resource) =
    make ?id ?method_ ?notes ?timeouts ~directory_id ~target __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
