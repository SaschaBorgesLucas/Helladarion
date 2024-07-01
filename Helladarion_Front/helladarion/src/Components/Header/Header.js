import styled from 'styled-components';


const Header = () => {
    
    return(
      <HelladarionHeader>
            <h1> Cabeçalho </h1>
      </HelladarionHeader>  
    );
}

const HelladarionHeader = styled.div`
    height: 120px;
    display: flex;
    justify-content: center;
    background-color: coral;
`;

export { Header }
