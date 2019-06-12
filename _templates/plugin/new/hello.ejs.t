---
to: <%= name %>/src/plugin-<%= name %>.tsx
---
import { ViewLink } from '@bp/ui-components';
import * as React from 'react';

<%
 className = name.split('');
 className[0] = className[0].toUpperCase();
 className = className.join('');
%>

const <%= className %>: React.SFC = () => (
  <div>
    <h1>Greetings from the planet Earth!</h1>
    <div>
      <ViewLink linkData={{ id: 'tutorial3/welcome' }}>
        Go to the Welcome view
      </ViewLink>
    </div>
  </div>
);

export default <%= className %>;



