(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create: string  prop option; [@option]
  delete: string  prop option; [@option]
  read: string  prop option; [@option]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type aws_quicksight_account_subscription = {
  account_name: string prop; 
  active_directory_name: string  prop option; [@option]
  admin_group: string   prop list option; [@option]
  authentication_method: string prop; 
  author_group: string   prop list option; [@option]
  aws_account_id: string  prop option; [@option]
  contact_number: string  prop option; [@option]
  directory_id: string  prop option; [@option]
  edition: string prop; 
  email_address: string  prop option; [@option]
  first_name: string  prop option; [@option]
  id: string  prop option; [@option]
  last_name: string  prop option; [@option]
  notification_email: string prop; 
  reader_group: string   prop list option; [@option]
  realm: string  prop option; [@option]
  timeouts: timeouts option;
} [@@deriving_inline yojson_of]
[@@@deriving.end]

let timeouts ?create ?delete ?read () =
  ({
    create;
    delete;
    read;
  } : timeouts);;

let aws_quicksight_account_subscription ?active_directory_name ?admin_group ?author_group ?aws_account_id ?contact_number ?directory_id ?email_address ?first_name ?id ?last_name ?reader_group ?realm ?timeouts ~account_name ~authentication_method ~edition ~notification_email () =
  ({
    account_name;
    active_directory_name;
    admin_group;
    authentication_method;
    author_group;
    aws_account_id;
    contact_number;
    directory_id;
    edition;
    email_address;
    first_name;
    id;
    last_name;
    notification_email;
    reader_group;
    realm;
    timeouts;
  } : aws_quicksight_account_subscription);;

type t = {
  account_name: string prop;
  account_subscription_status: string prop;
  active_directory_name: string prop;
  admin_group: string list prop;
  authentication_method: string prop;
  author_group: string list prop;
  aws_account_id: string prop;
  contact_number: string prop;
  directory_id: string prop;
  edition: string prop;
  email_address: string prop;
  first_name: string prop;
  id: string prop;
  last_name: string prop;
  notification_email: string prop;
  reader_group: string list prop;
  realm: string prop;
}

let make ?active_directory_name ?admin_group ?author_group ?aws_account_id ?contact_number ?directory_id ?email_address ?first_name ?id ?last_name ?reader_group ?realm ?timeouts ~account_name ~authentication_method ~edition ~notification_email __id =
  let __type = "aws_quicksight_account_subscription" in
  let __attrs = ({
    account_name = Prop.computed __type __id "account_name";
    account_subscription_status = Prop.computed __type __id "account_subscription_status";
    active_directory_name = Prop.computed __type __id "active_directory_name";
    admin_group = Prop.computed __type __id "admin_group";
    authentication_method = Prop.computed __type __id "authentication_method";
    author_group = Prop.computed __type __id "author_group";
    aws_account_id = Prop.computed __type __id "aws_account_id";
    contact_number = Prop.computed __type __id "contact_number";
    directory_id = Prop.computed __type __id "directory_id";
    edition = Prop.computed __type __id "edition";
    email_address = Prop.computed __type __id "email_address";
    first_name = Prop.computed __type __id "first_name";
    id = Prop.computed __type __id "id";
    last_name = Prop.computed __type __id "last_name";
    notification_email = Prop.computed __type __id "notification_email";
    reader_group = Prop.computed __type __id "reader_group";
    realm = Prop.computed __type __id "realm";
  } : t) in
  {Tf_core.
    id=__id;
    type_=__type;
    json=yojson_of_aws_quicksight_account_subscription (aws_quicksight_account_subscription ?active_directory_name ?admin_group ?author_group ?aws_account_id ?contact_number ?directory_id ?email_address ?first_name ?id ?last_name ?reader_group ?realm ?timeouts ~account_name ~authentication_method ~edition ~notification_email ());
    attrs=__attrs;
  };;

let register ?tf_module ?active_directory_name ?admin_group ?author_group ?aws_account_id ?contact_number ?directory_id ?email_address ?first_name ?id ?last_name ?reader_group ?realm ?timeouts ~account_name ~authentication_method ~edition ~notification_email __id =
  let (r : _ Tf_core.resource) = make ?active_directory_name ?admin_group ?author_group ?aws_account_id ?contact_number ?directory_id ?email_address ?first_name ?id ?last_name ?reader_group ?realm ?timeouts ~account_name ~authentication_method ~edition ~notification_email __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs;;

