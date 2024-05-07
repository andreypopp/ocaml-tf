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

type aws_account_alternate_contact = {
  account_id : string prop option; [@option]
  alternate_contact_type : string prop;
  email_address : string prop;
  id : string prop option; [@option]
  name : string prop;
  phone_number : string prop;
  title : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_account_alternate_contact) -> ()

let yojson_of_aws_account_alternate_contact =
  (function
   | {
       account_id = v_account_id;
       alternate_contact_type = v_alternate_contact_type;
       email_address = v_email_address;
       id = v_id;
       name = v_name;
       phone_number = v_phone_number;
       title = v_title;
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
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_phone_number in
         ("phone_number", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_email_address in
         ("email_address", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_alternate_contact_type
         in
         ("alternate_contact_type", arg) :: bnds
       in
       let bnds =
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_account_alternate_contact ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_account_alternate_contact

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_account_alternate_contact ?account_id ?id ?timeouts
    ~alternate_contact_type ~email_address ~name ~phone_number ~title
    () : aws_account_alternate_contact =
  {
    account_id;
    alternate_contact_type;
    email_address;
    id;
    name;
    phone_number;
    title;
    timeouts;
  }

type t = {
  tf_name : string;
  account_id : string prop;
  alternate_contact_type : string prop;
  email_address : string prop;
  id : string prop;
  name : string prop;
  phone_number : string prop;
  title : string prop;
}

let make ?account_id ?id ?timeouts ~alternate_contact_type
    ~email_address ~name ~phone_number ~title __id =
  let __type = "aws_account_alternate_contact" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       alternate_contact_type =
         Prop.computed __type __id "alternate_contact_type";
       email_address = Prop.computed __type __id "email_address";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       phone_number = Prop.computed __type __id "phone_number";
       title = Prop.computed __type __id "title";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_account_alternate_contact
        (aws_account_alternate_contact ?account_id ?id ?timeouts
           ~alternate_contact_type ~email_address ~name ~phone_number
           ~title ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ?timeouts
    ~alternate_contact_type ~email_address ~name ~phone_number ~title
    __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?id ?timeouts ~alternate_contact_type
      ~email_address ~name ~phone_number ~title __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
