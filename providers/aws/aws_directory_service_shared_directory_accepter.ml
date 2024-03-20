(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type aws_directory_service_shared_directory_accepter = {
  id : string prop option; [@option]
  shared_directory_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_directory_service_shared_directory_accepter) -> ()

let yojson_of_aws_directory_service_shared_directory_accepter =
  (function
   | {
       id = v_id;
       shared_directory_id = v_shared_directory_id;
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
           yojson_of_prop yojson_of_string v_shared_directory_id
         in
         ("shared_directory_id", arg) :: bnds
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
    : aws_directory_service_shared_directory_accepter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_directory_service_shared_directory_accepter

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_directory_service_shared_directory_accepter ?id ?timeouts
    ~shared_directory_id () :
    aws_directory_service_shared_directory_accepter =
  { id; shared_directory_id; timeouts }

type t = {
  id : string prop;
  method_ : string prop;
  notes : string prop;
  owner_account_id : string prop;
  owner_directory_id : string prop;
  shared_directory_id : string prop;
}

let make ?id ?timeouts ~shared_directory_id __id =
  let __type = "aws_directory_service_shared_directory_accepter" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       method_ = Prop.computed __type __id "method";
       notes = Prop.computed __type __id "notes";
       owner_account_id =
         Prop.computed __type __id "owner_account_id";
       owner_directory_id =
         Prop.computed __type __id "owner_directory_id";
       shared_directory_id =
         Prop.computed __type __id "shared_directory_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_directory_service_shared_directory_accepter
        (aws_directory_service_shared_directory_accepter ?id
           ?timeouts ~shared_directory_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~shared_directory_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~shared_directory_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
